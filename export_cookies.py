#!/usr/bin/env python3
"""Export YouTube cookies from a (copied, unlocked) Edge cookie DB to Netscape format.
Handles v10 AES-GCM cookies whose key is DPAPI-wrapped in Local State.
App-Bound (v20) cookies are skipped with a count so we know how many we lost."""
import json, base64, sqlite3, sys, os
from Crypto.Cipher import AES
import win32crypt

USER = os.environ.get("USERPROFILE", r"C:\Users\chenzicong")
COPY = os.path.join(os.environ.get("TEMP", r"C:\Users\chenzicong\AppData\Local\Temp"), "..", "..", "..", "..")
# use the /tmp copy we made
LOCAL_STATE = r"C:\Users\chenzicong\AppData\Local\Temp\edge-copy\Local State"
COOKIE_DB   = r"C:\Users\chenzicong\AppData\Local\Temp\edge-copy\Default\Network\Cookies"
OUT = r"D:\George\ICT\Paper\yt-cookies.txt"

# git-bash /tmp maps to %TEMP%? No — /tmp is usually C:\Users\<u>\AppData\Local\Temp on msys.
# Fall back: try both locations.
CANDIDATES_LS = [
    LOCAL_STATE,
    r"C:\Users\chenzicong\AppData\Local\Microsoft\Edge\User Data\Local State",
]
CANDIDATES_DB = [
    COOKIE_DB,
]

def find(paths):
    for p in paths:
        if os.path.exists(p):
            return p
    return None

ls_path = find(CANDIDATES_LS)
db_path = find(CANDIDATES_DB)
if not ls_path or not db_path:
    print(f"MISSING: local_state={ls_path} db={db_path}")
    # try to locate the msys /tmp copy
    for root in [r"C:\Users\chenzicong\AppData\Local\Temp"]:
        for dirpath, _, files in os.walk(root):
            if "Local State" in files and "edge-copy" in dirpath:
                print("found copy at", dirpath)
    sys.exit(2)

with open(ls_path, "r", encoding="utf-8") as f:
    local_state = json.load(f)
key_b64 = local_state["os_crypt"]["encrypted_key"]
key = base64.b64decode(key_b64)[5:]  # strip DPAPI prefix
key = win32crypt.CryptUnprotectData(key, None, None, None, 0)[1]

def decrypt(blob):
    try:
        if blob[:3] in (b"v10", b"v11"):
            nonce = blob[3:15]
            ct = blob[15:-16]
            tag = blob[-16:]
            return AES.new(key, AES.MODE_GCM, nonce=nonce).decrypt_and_verify(ct, tag).decode("utf-8", "ignore")
        if blob[:3] == b"v20":
            return None  # App-Bound, needs elevation service — skip
        # legacy DPAPI
        return win32crypt.CryptUnprotectData(blob, None, None, None, 0)[1].decode("utf-8", "ignore")
    except Exception:
        return None

con = sqlite3.connect(f"file:{db_path}?mode=ro&immutable=1", uri=True)
cur = con.cursor()
cur.execute("SELECT host_key, name, path, expires_utc, is_secure, encrypted_value FROM cookies")
rows = cur.fetchall()
con.close()

lines = ["# Netscape HTTP Cookie File", "# exported for yt-dlp", ""]
n_ok = n_v20 = n_fail = n_yt = 0
for host, name, path, expires, secure, enc in rows:
    val = decrypt(enc)
    if val is None:
        if enc[:3] == b"v20":
            n_v20 += 1
        else:
            n_fail += 1
        continue
    n_ok += 1
    if "youtube" in host or "google" in host:
        n_yt += 1
    # Netscape: expires_utc is microseconds since 1601; convert to unix
    exp = 0
    if expires and expires > 0:
        exp = int(expires / 1_000_000 - 11644473600)
        if exp < 0:
            exp = 0
    flag = "TRUE" if host.startswith(".") else "FALSE"
    sec = "TRUE" if secure else "FALSE"
    lines.append(f"{host}\t{flag}\t{path}\t{sec}\t{exp}\t{name}\t{val}")

with open(OUT, "w", encoding="utf-8", newline="\n") as f:
    f.write("\n".join(lines) + "\n")

print(f"decrypted={n_ok} (youtube/google={n_yt}) skipped_v20={n_v20} failed={n_fail}")
print(f"written: {OUT}")

#!/bin/bash
cd "D:/George/ICT/Paper/CS285-Spring2026/papers/books"
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36"
LOG="redl.log"; : > "$LOG"
dl() {
  url="$1"; dest="$2"; expect="$3"
  for try in 1 2 3; do
    curl -sL --max-time 500 -A "$UA" -o "$dest" "$url" 2>/dev/null
    sz=$(wc -c < "$dest" 2>/dev/null)
    eof=$(tail -c 1024 "$dest" 2>/dev/null | grep -c 'EOF')
    if [ "$(head -c4 "$dest" 2>/dev/null)" = "%PDF" ] && [ "$eof" -ge 1 ] && [ "$sz" -ge "$expect" ]; then
      echo "OK    try=$try  $((sz/1024/1024)) MB  EOF=yes  $dest" | tee -a "$LOG"; return 0
    fi
    echo "  retry $try: size=$((sz/1024)) KB eof=$eof (expect>=$((expect/1024/1024))MB)" | tee -a "$LOG"
    sleep 5
  done
  echo "FAIL  $dest (size=$((sz/1024))KB eof=$eof)" | tee -a "$LOG"; return 1
}
dl "http://incompleteideas.net/book/RLbook2020.pdf" "Sutton-Barto_Reinforcement-Learning-An-Introduction-2nd-ed_2018.pdf" 70000000
dl "https://tor-lattimore.com/downloads/book/book.pdf" "Lattimore-Szepesvari_Bandit-Algorithms_2020.pdf" 5200000
echo "==== REDL DONE ====" | tee -a "$LOG"

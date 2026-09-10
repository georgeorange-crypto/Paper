#!/bin/bash
cd "D:/George/ICT/Paper/CS285-Spring2026/papers/books"
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36"
LOG="dl_books.log"; : > "$LOG"
while IFS= read -r line; do
  url="${line%%|||*}"; dest="${line##*|||}"
  [ -z "$url" ] && continue
  if [ -f "$dest" ] && [ "$(head -c4 "$dest" 2>/dev/null)" = "%PDF" ]; then
    echo "SKIP  $dest (已存在)" | tee -a "$LOG"; continue
  fi
  ok=0
  for try in 1 2 3; do
    code=$(curl -skL --max-time 240 -A "$UA" -o "$dest" -w "%{http_code}" "$url" 2>/dev/null)
    if [ "$(head -c4 "$dest" 2>/dev/null)" = "%PDF" ]; then
      sz=$(wc -c < "$dest"); echo "OK    [$code] try=$try  $((sz/1024)) KB  $dest" | tee -a "$LOG"; ok=1; break
    fi
    sleep 3
  done
  [ "$ok" = 0 ] && { echo "FAIL  [$code] $dest  <- $url" | tee -a "$LOG"; rm -f "$dest"; }
done <<'LIST'
https://sites.ualberta.ca/~szepesva/papers/RLAlgsInMDPs.pdf|||Szepesvari_Algorithms-for-Reinforcement-Learning_2010.pdf
https://tor-lattimore.com/downloads/book/book.pdf|||Lattimore-Szepesvari_Bandit-Algorithms_2020.pdf
https://arxiv.org/pdf/1904.07272|||Slivkins_Introduction-to-Multi-Armed-Bandits_2019_arXiv-1904.07272.pdf
https://algorithmsbook.com/files/dm.pdf|||Kochenderfer-Wheeler-Wray_Algorithms-for-Decision-Making_2022.pdf
https://www.marl-book.com/download/marl-book.pdf|||Albrecht-Christianos-Schafer_Multi-Agent-Reinforcement-Learning_2024.pdf
LIST
echo "==== ALL DONE ====" | tee -a "$LOG"

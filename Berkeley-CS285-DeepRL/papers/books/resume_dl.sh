#!/bin/bash
cd "D:/George/ICT/Paper/CS285-Spring2026/papers/books"
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36"
LOG="resume.log"; : > "$LOG"
resume() {
  url="$1"; dest="$2"; expect="$3"
  echo "START $dest (target $((expect/1024/1024))MB)" | tee -a "$LOG"
  for try in $(seq 1 8); do
    # -C - 断点续传；每次最多跑 280s，断了下轮接着续
    curl -sL -C - --max-time 280 -A "$UA" -o "$dest" "$url" 2>/dev/null
    sz=$(wc -c < "$dest" 2>/dev/null)
    eof=$(tail -c 2048 "$dest" 2>/dev/null | grep -c 'EOF')
    if [ "$(head -c4 "$dest" 2>/dev/null)" = "%PDF" ] && [ "$eof" -ge 1 ] && [ "$sz" -ge "$expect" ]; then
      echo "OK    $dest  $((sz/1024/1024))MB  try=$try  EOF=yes" | tee -a "$LOG"; return 0
    fi
    echo "  ..try=$try size=$((sz/1024/1024))MB eof=$eof, 续传中" | tee -a "$LOG"
    sleep 4
  done
  echo "GIVEUP $dest (size=$(($(wc -c < "$dest")/1024/1024))MB)" | tee -a "$LOG"; return 1
}
resume "https://tor-lattimore.com/downloads/book/book.pdf" "Lattimore-Szepesvari_Bandit-Algorithms_2020.pdf" 5200000
resume "http://incompleteideas.net/book/RLbook2020.pdf" "Sutton-Barto_Reinforcement-Learning-An-Introduction-2nd-ed_2018.pdf" 70000000
echo "==== RESUME ALL DONE ====" | tee -a "$LOG"

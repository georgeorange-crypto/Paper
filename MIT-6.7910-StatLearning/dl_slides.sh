#!/bin/bash
# Download all 19 MIT 6.7910 (9.520) lecture slides
CURL="/c/Windows/System32/curl.exe"
cd /d/George/ICT/Paper/MIT-6.7910-StatLearning/slides || exit 1
base="https://poggio-lab.mit.edu/assets/9-520/slides"

files=(
  "01-introduction.pdf"
  "02-statistical-learning-theory.pdf"
  "03-least-squares-and-overparameterization.pdf"
  "04-logistic-regression-and-sgd.pdf"
  "05-implicit-regularization.pdf"
  "06-neural-networks.pdf"
  "07-random-features-ntk-rkhs.pdf"
  "08-infinite-width-neural-networks-rkbs.pdf"
  "09-learning-bounds-linear-least-squares.pdf"
  "10-learning-bounds-for-erm.pdf"
  "11-sequential-prediction-dynamical-systems.pdf"
  "12-classical-to-modern.pdf"
  "13-approximation-theory.pdf"
  "14-sparse-compositionality.pdf"
  "15-deep-learning-optimization.pdf"
  "16-trainability.pdf"
  "17-how-we-train.pdf"
  "18-where-training-goes-and-stability.pdf"
  "19-learning-theory-of-grammars.pdf"
)

for f in "${files[@]}"; do
  if [ -f "$f" ] && [ "$(stat -c%s "$f" 2>/dev/null)" -gt 10000 ]; then
    echo "skip (exists): $f"; continue
  fi
  "$CURL" -sL --ssl-no-revoke --connect-timeout 20 --max-time 180 -o "$f" "$base/$f" -w "%{http_code} %{size_download}B  $f\n"
done

# Also grab Rosasco's public ML notes referenced by the course
"$CURL" -sL --ssl-no-revoke --max-time 120 -o "MLNotes-Rosasco.pdf" "https://lcsl.unige.it/courses/ml/1718/MLNotes.pdf" -w "%{http_code} %{size_download}B  MLNotes-Rosasco.pdf\n"

echo "=== DONE 6.7910 slides ==="
ls -la *.pdf | awk '{print $5" B  "$NF}'

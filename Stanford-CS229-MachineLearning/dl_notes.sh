#!/bin/bash
# Download all CS229 lecture notes + section review PDFs
CURL="/c/Windows/System32/curl.exe"
DL() { "$CURL" -sL --ssl-no-revoke --connect-timeout 20 --max-time 120 -o "$2" "$1" -w "%{http_code} %{size_download}B  $2\n"; }

cd /d/George/ICT/Paper/CS229-MachineLearning/notes || exit 1
base="https://cs229.stanford.edu"

# Per-topic lecture notes
for n in notes1 notes2 notes3 notes4 notes5 notes6 notes7a notes7b notes8 notes9 notes10 notes11 notes12 notes13 notes-dt notes-ensemble notes-deep_learning notes-backprop; do
  DL "$base/notes/cs229-${n}.pdf" "cs229-${n}.pdf"
done

# Section / review notes
mkdir -p ../section
cd ../section || exit 1
for s in cs229-linalg cs229-prob cs229-prob-slide cs229-cvxopt cs229-cvxopt2 cs229-hmm gaussians more_on_gaussians cs229-gaussian_processes evaluation_metrics error-analysis; do
  DL "$base/section/${s}.pdf" "${s}.pdf"
done

# Materials (advice slides, ps0)
mkdir -p ../materials
cd ../materials || exit 1
DL "$base/materials/ML-advice.pdf" "ML-advice.pdf"
DL "$base/materials/ps0.pdf" "ps0.pdf"

echo "=== DONE ==="

#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
build_dir=$(mktemp -d)
trap 'rm -rf "$build_dir"' EXIT
for name in isohash2 saucybliss; do
  latex -interaction=nonstopmode -halt-on-error -output-directory="$build_dir" "$name.tex" > "$build_dir/$name-build.log"
  dvisvgm --no-fonts --exact --output="$name.svg" "$build_dir/$name.dvi"
done

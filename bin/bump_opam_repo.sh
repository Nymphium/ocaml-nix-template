#!/bin/sh

set -eu

unset OPAM_REPO_COMMIT
nix-shell default.nix -A resolve

sha=$(echo 'let selection = import ./nix/opam-selection.nix {}; in selection.repos.opam-repository.fetch.rev' | nix repl 2>/dev/null \
  | awk '$0 != "" { gsub("\"", "", $1); gsub(/\x1b\[[0-9;]*m?/, "", $1); print $0 }')

sed -i'' -e "s/\(OPAM_REPO_COMMIT=\).*/\1${sha}/" .envrc


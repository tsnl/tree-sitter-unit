#!/bin/bash
# Regenerate the tree-sitter grammar from rust-sitter (in the parent unit repo)
# and push to this submodule if it changed.
#
# Run from inside the submodule after modifying src/parser.rs in the parent.

set -euo pipefail

submodule_dir="$(cd "$(dirname "$0")" && pwd)"
parent_repo="$submodule_dir/../"

cd "$parent_repo"
cargo build --quiet

cd "$submodule_dir"
if git diff --quiet; then
    echo "Grammar unchanged."
    exit 0
fi

echo "Grammar changed. Committing and pushing..."
git add grammar.json
git commit -m "Update grammar from rust-sitter"
git push origin main

echo
echo "Submodule updated. Bump the SHA in the parent repo:"
echo "  cd $parent_repo && git add editor && git commit -m 'Update tree-sitter-unit'"

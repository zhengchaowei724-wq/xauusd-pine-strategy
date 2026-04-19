#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${1:-trading-agent}"
REPO_URL="https://github.com/TauricResearch/TradingAgents.git"

if command -v git >/dev/null 2>&1; then
  echo "[INFO] Cloning $REPO_URL into $TARGET_DIR ..."
  git clone --depth 1 "$REPO_URL" "$TARGET_DIR"
  echo "[DONE] Downloaded to: $TARGET_DIR"
else
  echo "[ERROR] git is not installed."
  exit 1
fi

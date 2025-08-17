#!/usr/bin/env bash
set -euo pipefail

# 必要パッケージ
if ! command -v curl >/dev/null; then
  sudo apt-get update && sudo apt-get install -y curl
fi

RUNNER_VER="2.320.0"
ARCH=$(uname -m)
if [ "$ARCH" = "x86_64" ]; then ARCH="x64"; fi

mkdir -p ~/actions-runner && cd ~/actions-runner
curl -o actions-runner.tar.gz -L https://github.com/actions/runner/releases/download/v${RUNNER_VER}/actions-runner-linux-${ARCH}-${RUNNER_VER}.tar.gz
tar xzf actions-runner.tar.gz

# === 手入力が必要 ===
echo
echo "GitHub のリポジトリURL（例：https://github.com/USER/mirai-runner）を入力してください:"
read REPO_URL
echo "Runner に付けるラベル（例：mirai-local-runner）を入力してください:"
read LABELS

./config.sh --url "$REPO_URL" --labels "$LABELS"
echo "登録完了。起動テストは ./run.sh で可能です。"

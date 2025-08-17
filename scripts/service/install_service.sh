#!/usr/bin/env bash
set -euo pipefail

RUNNER_DIR="$HOME/actions-runner"
SERVICE_NAME="mirai-runner"

if [ ! -d "$RUNNER_DIR" ]; then
  echo "ERROR: $RUNNER_DIR が見つかりません。先に scripts/register_runner.sh を実行してください。"
  exit 1
fi

cd "$RUNNER_DIR"
sudo ./svc.sh install ${USER}
sudo ./svc.sh start
sudo ./svc.sh status
echo "systemd 常駐設定が完了しました。"


# mirai-runner

最小構成の GitHub Actions Runner & 自動化スターター。  
ローカル常駐（systemd想定）＋ ワークフロー疎通確認用。

## 使い方（超短縮）
1. GitHubで `mirai-runner` リポジトリを作成
2. このリポジトリの中身をそのまま置く（初回Push）
3. ローカルでランナー登録（`scripts/register_runner.sh`）
4. 常駐化（`scripts/service/install_service.sh`）
5. Pushして Actions が走るか確認（`Mirai Runner`）

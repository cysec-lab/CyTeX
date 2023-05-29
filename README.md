# CyTeX

CyTeX（読み方：さいてふ）は、GitHub Codespaces を用いた日本語用の LaTeX 論文執筆環境です。
ローカル環境に texlive や Docker をインストールする手間なく、GitHub Codespace 上のクラウド開発環境に LaTeX 環境を構築できます。
Codespace 環境ではなく、Docker や devContainer を用いてローカル環境に構築することも可能です。

## branch 構成

本プロジェクトでは、論文執筆活動で使用するテンプレートを branch ごとに管理しています。
使用したいテンプレートを選択した上で fork してください。
以下に branch の一覧を記載します。

- [`dicomo2023`](https://github.com/cysec-lab/CyTeX/tree/dicomo2023): DICOMO 2023 用テンプレート
- (逐次追加)

## 基本技術スタック

- GitHub Codespace / devContainer
- docker / docker compose
- texlive
- VSCode
- LaTeX Workshop VSCode Extension

## 使用手順

以下の 2 通りの使用方法があります。

- [Codespaces を用いてクラウド開発環境に構築する](how_to_use_codespace.md)
  - 推奨。環境構築が最も容易
  - 注意。[無料で使用できる月間ストレージとコア時間](https://docs.github.com/ja/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces#monthly-included-storage-and-core-hours-for-personal-accounts) に上限がある
  - 上限に達した場合、以下の方法か、他の執筆環境を構築する必要がある
- [devContainer を用いてローカル環境に構築する](how_to_use_devContainer.md)

## ビルド

以下の 2 種類の方法でビルドできます。

- `*.tex` ファイルを保存する（`Ctrl + s` or `⌘ + s`）
- ターミナルで `latexmk ./main.tex` を実行する

ビルドすると、`out/` に PDF ファイルが生成されます。

## git commit / push

VSCode では、以下の手順で git `add` `commit` `push` できます。

- サイドバーの<img width="30px" src="image/vscode-git-icon.png"/>を選択する
- commit するファイルの`+`ボタンを選択して git add
- commit メッセージ入力欄に記入する
- `Ctrl + Enter` (or `⌘ + Enter`) で git commit
- `Ctrl + Shift + P` (or `⌘ + Shift + P`)でコマンドパレットを開き、`Git Push`を選択して git push

## Contribute

1. 不具合・要望を記載した[issue](https://github.com/cysec-lab/CyTeX/issues) を作成する。
2. リポジトリを fork した上、Pull Request する。

## Author

[Ran350](https://github.com/Ran350/)

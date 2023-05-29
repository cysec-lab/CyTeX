<div align="center">

# ![CyTeX](image/CyTeX.svg)

</div>

CyTeX（読み方：さいてふ）は、GitHub Codespaces を用いた、環境構築が容易な日本語用の LaTeX 論文執筆環境です。
ローカル環境に texlive や Docker をインストールせずに、GitHub Codespace 上のクラウド開発環境に LaTeX 環境を構築できます。
また、devContainer を用いて、Codespace 環境ではなくローカル環境に構築することも可能です。

<div align="center">
  
https://github.com/cysec-lab/CyTeX/assets/56746857/589c5472-79f7-4e35-9753-ef0329050764

</div>

## branch 構成

本プロジェクトでは、論文執筆活動で使用するテンプレートを branch ごとに管理しています。
使用したいテンプレートの branch を指定して clone してください。
以下に branch の一覧を記載します。

- `main`: ドキュメント用
- `feature*/`: 機能追加用
- `template/*`: 論文執筆環境テンプレート用
  - [`template/dicomo2023`](https://github.com/cysec-lab/CyTeX/tree/template/dicomo2023): DICOMO 2023 用テンプレート

## 基本技術スタック

- GitHub Codespace / devContainer
- docker / docker compose
- texlive
- VSCode
  - LaTeX Workshop VSCode Extension

## 使用手順

### 作業用リポジトリの作成

- 作業用の [GitHub リポジトリを作成する](https://docs.github.com/ja/get-started/quickstart/create-a-repo)
  - 注意：論文執筆用なので public ではなく private を選択する
- CyTeX リポジトリを clone して作業用リポジトリに push
  - `ブランチ名`：[branch 構成](README.md#branch-構成)から使用したい branch を選ぶ
  - `ユーザ名/リポジトリ`：自分のユーザ名、作成した作業用リポジトリ名

```sh
git clone --depth 1 -b ブランチ名 https://github.com/cysec-lab/CyTeX.git
git branch -m main
git remote set-url origin https://github.com/ユーザ名/リポジトリ名.git
git push -u origin main
```

### LaTeX 環境の構築

以下 2 通りの方法があります。

1. [Codespaces を用いてクラウド開発環境に構築する方法](how_to_use_codespace.md)（推奨）
   - 注意：[無料で使用できる月間ストレージとコア時間](https://docs.github.com/ja/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces#monthly-included-storage-and-core-hours-for-personal-accounts) の上限に達した場合、2 の方法か、他の執筆環境を構築する必要がある
2. [devContainer を用いてローカル環境に構築する方法](how_to_use_devContainer.md)

### ビルド

以下 2 通りの方法でビルドできます。

- `*.tex` ファイルを保存する（`Ctrl + s` or `⌘ + s`）
- ターミナルで `latexmk ./main.tex` を実行する

ビルドすると、`out/` に PDF ファイルが生成されます。

### git push

VSCode では、以下の手順で git `add` `commit` `push` できます。

- サイドバーの<img width="30px" src="image/vscode-git-icon.png"/>を選択する
- commit するファイルの`+`ボタンを選択して git add
- commit メッセージ入力欄に記入する
- `Ctrl + Enter` (or `⌘ + Enter`) で git commit
- `Ctrl + Shift + P` (or `⌘ + Shift + P`)でコマンドパレットを開き、`Git: Push`を選択する

## Codespaces 利用上の注意

[無料で使用できる月間ストレージとコア時間](https://docs.github.com/ja/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces#monthly-included-storage-and-core-hours-for-personal-accounts) には**上限**があります。
GitHub Pro アカウントの場合は 180 コア時間/月で、2 コアから選択できるので月 90 時間分に相当します。
コア時間は、Codespace が Active 状態の時間がカウントされます。
Codespace の状態は[github.com/codespaces](https://github.com/codespaces)から確認、管理できます。

また、非アクティブな時間が経過すると、codespace は**自動停止**します。
タイムアウト時間はデフォルトで 30 分に設定されています。
詳しくは、[GitHub Codespaces のタイムアウト期間を設定する](https://docs.github.com/ja/codespaces/customizing-your-codespace/setting-your-timeout-period-for-github-codespaces?tool=webui)を参照してください。

Active な Codespace は以下のいずれかの方法で**手動停止**できます。
詳しくは、[codespace の停止と開始](https://docs.github.com/ja/codespaces/developing-in-codespaces/stopping-and-starting-a-codespace)を参照してください。

- VSCode または Browser Codespace で、左下の`><`アイコン > `Stop Current Codespace` を選択する
- [github.com/codespaces](https://github.com/codespaces) にアクセスし、Active な Codespace の `…` から `Stop Codespace` を選択する

## Contribute

不具合・要望を記載した[issue](https://github.com/cysec-lab/CyTeX/issues) を作成した上で、Pull Request してください。

## Author

[Ran350](https://github.com/Ran350/)

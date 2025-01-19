<div align="center">

# ![CyTeX](docs/image/CyTeX.svg)

</div>

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/cysec-lab/cytex)

CyTeX（読み方：さいてふ）は、DevContainer を用いた、環境構築が容易な日本語用の LaTeX 論文執筆環境テンプレートです。
ローカル環境の Docker コンテナ、あるいは GitHub Codespace 上のクラウド開発環境に LaTeX 環境を構築できます。

<video src="https://github.com/cysec-lab/CyTeX/assets/56746857/bad34299-8bd5-4af6-ad09-ab8bbeea3f5d">
  <img
    src="https://github.com/cysec-lab/CyTeX/assets/56746857/bad34299-8bd5-4af6-ad09-ab8bbeea3f5d"
    alt="demo video"
  />
</video>

## 使用手順

以下のファイル/フォルダをあなたの LaTeX 執筆環境にコピーしてください。

- [.devcontainer/\*](.devcontainer/)
- [.vscode/\*](.vscode/)
- [main.tex（名前は変更可）](main.tex)
- [.gitignore](.gitignore)

また、執筆論文指定の形式に合わせて、任意のスタイルファイルを追加してください。

### LaTeX コンパイル環境の構築手順

以下 2 通りの方法があります。

1. [Codespaces を用いてクラウド開発環境に構築する方法](docs/how_to_use_codespace.md)
   - 注意：[無料で使用できる月間ストレージとコア時間](https://docs.github.com/ja/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces#monthly-included-storage-and-core-hours-for-personal-accounts) の上限に達した場合、2 の方法か、他の執筆環境を構築する必要がある
2. [devContainer を用いてローカル環境に構築する方法](docs/how_to_use_devContainer.md)

### ビルド手順

以下 2 通りの方法でビルドできます。

1. `*.tex` ファイルを保存する
2. ターミナルで `latexmk ./main.tex` を実行する

ビルドすると、`out/` に PDF ファイルが生成されます。

## Codespaces 利用上の注意

- [無料で使用できる月間ストレージとコア時間](https://docs.github.com/ja/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces#monthly-included-storage-and-core-hours-for-personal-accounts) には**上限**があります。
  - GitHub Pro アカウントの場合は 180 コア時間/月で、2 コアから選択できるので**月 90 時間分**に相当します。
  - コア時間は、Codespace が Active 状態の時間がカウントされます。
- Codespace の状態は、[github.com/codespaces](https://github.com/codespaces)から確認、管理できます。
- 現在の請求月に使用した Codespaces コンピューティング使用量は、[github.com/settings/billing](https://github.com/settings/billing) の `Codespaces` から確認できます。
- 非アクティブな時間が経過すると、codespace は**自動停止**します。
  - タイムアウト時間はデフォルトで 30 分に設定されています。
  - 参考：[GitHub Codespaces のタイムアウト期間を設定する](https://docs.github.com/ja/codespaces/customizing-your-codespace/setting-your-timeout-period-for-github-codespaces?tool=webui)
- Active な Codespace は以下のいずれかの方法で**手動停止**できます。 （参考：[codespace の停止と開始](https://docs.github.com/ja/codespaces/developing-in-codespaces/stopping-and-starting-a-codespace)）
  - VSCode または Browser Codespace で、左下の`><`アイコン > `Stop Current Codespace` を選択する
  - [github.com/codespaces](https://github.com/codespaces) にアクセスし、Active な Codespace の `…` から `Stop Codespace` を選択する

## Welcome Contribution

不具合・要望を記載した[issue](https://github.com/cysec-lab/CyTeX/issues) を作成した上で、Pull Request してください。

## Author

[Ran350](https://github.com/Ran350/)

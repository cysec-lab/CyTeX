# DICOMO 2023 論文執筆環境

## Requirement

ローカル環境で以下が使用可能であること。

- docker
- VSCode
- git

以下の環境で動くことを確認済み。

- MacOS / ARM
- Ubuntu20.04 / Intel

## 環境構築

```sh
git clone git@github.com:Ran350/dicomo2023.git
code dicomo2023/thesis
```

「コンテナーで再度開く」をクリックして、devContainer を起動する。
初回起動時は docker コンテナのビルドに時間がかかる可能性があるので注意。

## ビルド

以下の 2 種類の方法でビルドできる。

- `.tex` ファイルを保存（`Ctrl + S` or `⌘ + S`）
- devContainer 内のターミナルで `latexmk ./main.tex` を実行する

`out/` に `main.pdf` が生成される。

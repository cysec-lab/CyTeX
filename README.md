# 2024 年度秋セメスター 卒論 テンプレート

本 branch は，立命館大学情報理工学部，2024 年度秋セメスター卒業論文のテンプレートです．
`<>`ボタン > `Download ZIP`ボタンからソースをダウンロードし，執筆環境を構築してください．

## TeX Live + VSCode + LaTeX Workshop の場合の LaTeX 環境構築

Cysec 研で推奨している LaTeX 環境は特にないので，お好みの環境を構築してください．
特にこだわりのない人のために，TeX Live + VSCode + LaTeX Workshop で構築する手順を紹介しておきます．

[VSCode で最高の LaTeX 環境を作る #VSCode - Qiita](https://qiita.com/rainbartown/items/d7718f12d71e688f3573#%E5%BF%85%E8%A6%81%E3%81%AA%E3%83%84%E3%83%BC%E3%83%AB%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB)
の手順通りに，VSCode，TeX live のインストール，latexmkrc の編集を行う．

任意で，tex ファイルを整形するための perl package をインストールする．

```
brew install perl
sudo cpan install Log::Log4perl File::HomeDir
```

## VSCode Snippets

VS Code の User Snippets は，頻繁に使用するコードブロックを短いキーワードで簡単に挿入できる機能です．
本テンプレートでは，latex ファイルで使用する Snippets を[latex.json.code-snippets](./.vscode/latex.json.code-snippets)に登録しています．
既に itemize などを登録していますが，必要に応じて変更してください．

## VSCode Extension

推奨される VSCode 拡張機能を [.vscode/extensions.json](./.vscode/extensions.json)に記載しています．
拡張機能メニューを開いて`@recommended` と入力し，インストールボタンをクリックすることでインストールできます．

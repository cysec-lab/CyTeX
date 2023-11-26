# 卒論執筆に焦らないために、弊研推奨の執筆手順

- バックアップ環境の用意
- LaTeX 環境の用意
- 執筆

## LaTeX 環境を選ぼう

各々使いたい環境があると思うので研究室としての推奨はあえて設けないが、参考までに以下のようなが考えられる。

- LaTeX コンパイル環境：texlive、cloudlatex、overleaf、CyTeX
- 編集環境：cloudlatex for VSCode

## 災いに備えよ

卒研のデータは絶対にバックアップを取りましょう。ローカル環境とクラウド環境の両方に残しておきましょう。

バックアップは OneDrive でも Google ドライブでも構いませんが、弊研では、以下の理由から Git / GitHub で管理することを推奨します。

- グダってしまった際に戻せる

また、GitHub リポジトリは、個人のアカウントではなく、弊研の GitHub Organization で作成することを推奨します。

- レビューがしやすい
- 進捗が可視化される

### GitHub リポジトリを用意してみ

- エディタの用意
- github アカウントの作成、CySec org への追加
- git コマンドのインストール
- gh コマンドのインストール
  - 一番楽。SSH キーの登録も必要ない。
- リポジトリの作成、Cysec org の private リポジトリとして
- cysec-lab/cytex の bachelor-2024 から zip をダウンロード
- git init
- git add, commit, push
  - こまめに push しよう、少なくとも一日の作業終わりには必ず git push
  - github から最新版を閲覧できるように PDF も up しよう
  - commit メッセージにこだわるな

## いざ、論文執筆

### まずはこれを読むべし

卒論執筆における心得や文章表現等は以下をぜひ参考にしてください。

- [卒業論文の書き方 | 中田 亨](https://researchmap.jp/blogs/blog_entries/view/77082/0eb9a69b5e4a770751c9f9b0f7f315d0#:~:text=%E9%80%9F%E3%81%8F%E6%A5%BD%E3%81%AB%E6%9B%B8%E3%81%8F%E3%81%9F%E3%82%81%E3%81%AE%E5%BF%83%E5%BE%97)
- [学位論文の書き方 #論文執筆 - Qiita](https://qiita.com/NaokiAkai/items/714dc2fd2f4d222a1ddf)
- [論文における提案手法の書き方 #論文 - Qiita](https://qiita.com/NaokiAkai/items/e607e8e79949b1e11f95)
- [LaTeX における正しい論文の書き方 #LaTeX - Qiita](https://qiita.com/birdwatcher/items/5ec42b35d84d3ee2ffbb)
- [卒・修論に見られる良くない表現](https://www.sci.hokudai.ac.jp/~minobe/class/bad_expressions.htm)

先輩たちの資料を見たいときはここにあります。

- [サイバーセキュリティ研究室内部ページ - 卒論・修論](https://sites.google.com/cysec.cs.ritsumei.ac.jp/local/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E9%96%A2%E9%80%A3/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E8%B3%87%E6%96%99/%E5%8D%92%E8%AB%96%E4%BF%AE%E8%AB%96?authuser=2&pli=1)
- [サイバーセキュリティ研究室内部ページ - 論文発表会資料](https://sites.google.com/cysec.cs.ritsumei.ac.jp/local/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E9%96%A2%E9%80%A3/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E8%B3%87%E6%96%99/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E8%B3%87%E6%96%99?pli=1&authuser=2)

### ちょっと待て、いきなり詳細に書き始めない

最初から順に丁寧な文章を書き始めて、最後まで書き終わったものを改めて全文通して見てみるとどうなるか。

なので、大枠 → 詳細に書いていこう

- 大枠の流れ、骨組みを作る。箇条書き
- 骨組みに対して肉付けを行う。
- 因果関係やつなぎ目に無理はないか、客観的に読み返す。
- 不要な箇所を削ったり、説明不足を補ったりする。
- 再度読み返す、直す、以下完成までエンドレスリピート。

### レビューでブラッシュアップせよ

- こまめにフィードバックをもらうべし
  - 章構成と内容の骨組みができたらレビュー
  - 学生&先生両方から

## Tips

### git でこういうときどうしたらええの？

- ここにいい感じの web サイトリンク
- ChatGPT
- VSCode GUI

### 文章校正ツール

- textlint
- textlint site provided by xryuseix
- word
- ChatGPT

### VSCode 拡張機能

- [Japanese Language Pack for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=MS-CEINTL.vscode-language-pack-ja)
- [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)：GitHub pro への登録が必要（学生無料）
- [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)：リポジトリの history グラフを見れたり、git の操作ができる。
- [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)：英単語の綴りミスを見つけてくれる

## さいごに

ここに応援コメント

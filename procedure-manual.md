# 卒論執筆 指南書

流れ

1. LaTeX 環境の選定
2. バックアップ環境の用意
3. 執筆

> [!NOTE]
> ここでの紹介はあくまで推奨であり、強制するものではありません。
> 使いたい環境がある場合はそっちを使ってもらって大丈夫です。

## LaTeX 環境を選ぼう

各々使いたい環境があると思うので研究室としての推奨はあえて設けないが、参考までに以下のようなが考えられる。

- LaTeX コンパイル環境：texlive、cloudlatex、overleaf、CyTeX
- 編集環境：VSCode LaTeX Workshop, cloudlatex for VSCode

## 災いに備えよ

**絶対に卒研のデータのバックアップを取っておきましょう。**
なぜか卒論時期に限ってマシンの故障が頻発します。
提出間近になって PC が壊れてしまい、提出できなくなるという悲惨な事故は起こり得ます。
そうならないように、ローカル環境だけでなく、OneDrive や Google Drive、GitHub などのクラウドサービスにバックアップ体制を構築しておきましょう。

これらのバックアップ環境の中でも、弊研では以下の環境を推奨します。

- 「cysec-lab」の GitHub Organization に紐づいたプライベートリポジトリ

理由としては、

- **バージョン管理をしたい**: Git を使用することで、データの変更履歴を管理し、誤った更新やデータ損失が発生した場合に簡単に元の状態に戻せる。
- **レビュワーがアクセスしやすい**: 個人アカウントでリポジトリを作成した場合は、レビュワーにリポジトリへの招待の手間がある。めんどくさい。Organization のリポジトリにしておけばそのような手間はない。
- **レビュー機能を使える**: GitHub の Issue や Pull Request、Permalink 機能を用いたレビューができる。

### GitHub リポジトリを用意しよう

- github アカウントの作成、CySec org への追加
- git コマンドのインストール
- gh コマンドのインストール
  - 一番楽。SSH キーの登録も必要ない。
- リポジトリの作成、Cysec org の private リポジトリとして
- cysec-lab/cytex の bachelor-2024 から zip をダウンロード
- git init
- init commit を push
- GitHub に反映されたか確認してみよう

### Git の使い方を軽く紹介

// TODO: いい感じに説明してくれてるサイトを貼り付けたい。

- ローカルリポジトリ / リモートリポジトリとは
- add とは
- commit とは
- push とは

詳しく勉強した場合は（リファレンス）。
もしくは、ChatGPT に「Git で〜したい時はどうすれば良い？」って聞いてみるのもいいかも。

（講座では実際に編集して push してもらう）

### 心得

- **こまめに push すべし**：少なくとも一日の作業終わりには必ず git push。
- **PDF も Git 管理すべし**：LaTeX コンパイルが通らなくなるなど、前バージョンの PDF を参照したいときは多い。あと、レビュー時に GitHub から閲覧できるも便利。
- **commit 戦略こだわるべからず**：実開発であれば commit するタイミングや commit message をこだわるところだが、卒論執筆ではその必要はない。一息ついたタイミングで commit/push しよう。それより論文の完成度を高めることを優先しよう。

## いざ、執筆

### まずはこれを読むべし

卒論執筆における心得や文章表現等は以下をぜひ参考にしてください。

- [卒業論文の書き方 | 中田 亨](https://researchmap.jp/blogs/blog_entries/view/77082/0eb9a69b5e4a770751c9f9b0f7f315d0#:~:text=%E9%80%9F%E3%81%8F%E6%A5%BD%E3%81%AB%E6%9B%B8%E3%81%8F%E3%81%9F%E3%82%81%E3%81%AE%E5%BF%83%E5%BE%97)
  > 速く楽に書くコツは、「広く浅く書いて積み上げる」ことと「人に見せる」ことである。
- [学位論文の書き方 #論文執筆 - Qiita](https://qiita.com/NaokiAkai/items/714dc2fd2f4d222a1ddf)
  > 通常の論文では省くようなこと（社会背景や超基礎的なことなど）も書くことが推奨される
- [論文における提案手法の書き方 #論文 - Qiita](https://qiita.com/NaokiAkai/items/e607e8e79949b1e11f95)
  > 提案手法には一般的なことを書く
  > 実装には実際にどの様にそれを実現したかを書く
- [卒・修論に見られる良くない表現](https://www.sci.hokudai.ac.jp/~minobe/class/bad_expressions.htm)
- [LaTeX における正しい論文の書き方 #LaTeX - Qiita](https://qiita.com/birdwatcher/items/5ec42b35d84d3ee2ffbb)

先輩たちの資料を見たいときはここにあります。

- [サイバーセキュリティ研究室内部ページ - 卒論・修論](https://sites.google.com/cysec.cs.ritsumei.ac.jp/local/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E9%96%A2%E9%80%A3/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E8%B3%87%E6%96%99/%E5%8D%92%E8%AB%96%E4%BF%AE%E8%AB%96?authuser=2&pli=1)
- [サイバーセキュリティ研究室内部ページ - 論文発表会資料](https://sites.google.com/cysec.cs.ritsumei.ac.jp/local/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E9%96%A2%E9%80%A3/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E8%B3%87%E6%96%99/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E8%B3%87%E6%96%99?pli=1&authuser=2)

### レビューでブラッシュアップせよ

- こまめにフィードバックをもらうべし
  - 章構成と内容の骨組みができたらレビュー
  - 学生&先生両方から

## Tips

### 文章校正ツール

- CyLint
- textlint
- Word
- ChatGPT

### VSCode で執筆する人向け

VSCode では GUI から Git の操作ができる。
デフォルトでも色々できるが、拡張機能を入れるとさらにできることが増える。

- [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)：リポジトリの history グラフを見れたり、git の操作ができる。

他にも便利な拡張機能が

- [Japanese Language Pack for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=MS-CEINTL.vscode-language-pack-ja)：VSCode を日本語化してくれる。
- [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)：GitHub Pro への登録が必要（学生無料）
- [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)：英単語の綴りミスを見つけてくれる。

## さいごに

ここに応援コメント

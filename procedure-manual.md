# 卒論執筆 指南書

本指南書では，卒論執筆の流れや心得を紹介します．
執筆開始前に適宜ご参照ください．

まず，執筆は以下の流れで行います．

1. LaTeX 環境の選定
2. バックアップ環境の用意
3. 執筆

> [!NOTE]
> ここでの紹介はあくまで推奨であり，強制するものではありません．
> 使いたい環境がある場合はそっちを使ってもらって大丈夫です．

## LaTeX 環境を選ぼう

各々使いたい環境があると思うので研究室としての推奨は設けていませんが，参考までに以下のような選択肢が考えられます．

- LaTeX コンパイル環境：
  [TeX Live](https://texwiki.texjp.org/?TeX%20Live%2FWindows)，
  [Cloud LaTeX](https://cloudlatex.io/)，
  [Overleaf](https://ja.overleaf.com/project)，
  [CyTeX](https://github.com/cysec-lab/CyTeX)
  など
- 編集環境
  クラウドコンパイル環境の Web UI，
  VSCode LaTeX Workshop，
  Cloud LaTeX for VSCode，
  [LaTeX 専用の統合環境](https://texwiki.texjp.org/?TeX%E7%94%A8%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF)
  など

> [!NOTE]
> クラウドコンパイル環境を採用する場合は，無料枠では Git 管理ができないなどの制限があるので確認すること．

## 災いに備えよ

**絶対に卒研のデータのバックアップを取っておきましょう．**
なぜか卒論時期に限ってマシンの故障が頻発します．
提出間近になって PC が壊れてしまい，提出できなくなるという悲惨な事故は起こり得ます．
そうならないように，ローカル環境だけでなく OneDrive や Google Drive，GitHub などのクラウドサービスにバックアップ体制を構築しておきましょう．

これらのバックアップ環境の中でも，弊研では以下の環境を推奨します．

- 「cysec-lab」の GitHub Organization に紐づいたプライベートリポジトリ

理由としては，

- **バージョン管理をしたい**: Git を使用することで，データの変更履歴を管理し，誤った更新やデータ損失が発生した場合に簡単に元の状態に戻せる．
- **レビュワーがアクセスしやすい**: 個人アカウントでリポジトリを作成した場合は，レビュワーにリポジトリへの招待の手間がある．めんどくさい．Organization のリポジトリにしておけばそのような手間はない．
- **レビュー機能を使える**: GitHub の Issue や Pull Request，Permalink 機能を用いたレビューができる．

### GitHub リポジトリを用意しよう

- github アカウントの作成，CySec org への追加
- git コマンドのインストール
- gh コマンドのインストール：一番楽．SSH キーの登録も必要ない．
- リポジトリの作成，Cysec org の private リポジトリとして
- [cysec-lab/cytex の bachelor-fy2023-autumn](https://github.com/cysec-lab/cytex/tree/template/bachelor-fy2023-autumn) から zip をダウンロード
- ディレクトリ名を変更
- git init
- git add / git commit
- init commit を push
- GitHub に反映されたか確認してみよう

### Git の使い方

最低限覚えたい概念

- [Git とは何か](https://scrapbox.io/interaction-lab-git/Git%E3%81%A8%E3%81%AF%E4%BD%95%E3%81%8B)
- git init: ワークスペースを作成する操作
- git add: 記録する変更を選ぶ操作
- git commit: 変更を記録する操作
- git push: 記録した変更をリモートリポジトリに共有する操作

Git入門資料

- [Git 講習会 - scrapbox](https://scrapbox.io/interaction-lab-git/%E7%9B%AE%E6%AC%A1)
  - [Git操作の基本的な流れ](https://scrapbox.io/interaction-lab-git/Git操作の基本的な流れ)
  - [ファイルのステージング (git add)](<https://scrapbox.io/interaction-lab-git/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%81%AE%E3%82%B9%E3%83%86%E3%83%BC%E3%82%B8%E3%83%B3%E3%82%B0_(git_add)>)
  - [コミットする (git commit)](<https://scrapbox.io/interaction-lab-git/%E3%82%B3%E3%83%9F%E3%83%83%E3%83%88%E3%81%99%E3%82%8B_(git_commit)>)
  - [GitHub にアップロードする (git push)](<https://scrapbox.io/interaction-lab-git/GitHub_%E3%81%AB%E3%82%A2%E3%83%83%E3%83%97%E3%83%AD%E3%83%BC%E3%83%89%E3%81%99%E3%82%8B_(git_push)>)
- [サル先生の Git 入門](https://backlog.com/ja/git-tutorial/)

困った時は，ChatGPT に「Git で〜したい時はどうすれば良い？」って聞いてみるのもいいかも．

### Git の心得

- **こまめに push すべし**：少なくとも一日の作業終わりには必ず git push．
- **PDF も Git 管理すべし**：LaTeX コンパイルが通らなくなるなど，前バージョンの PDF を参照したいときは多い．あと，レビュー時に GitHub から閲覧できるも便利．
- **commit 戦略こだわるべからず**：実開発であれば commit するタイミングや commit message をこだわるところだが，卒論執筆ではその必要はない．一息ついたタイミングで commit/push しよう．それより論文の完成度を高めることを優先しよう．ちなみに，GitHub Copilot に commit message を生成してもらうこともできるので気になる人はぜひ．

## いざ，執筆

### まずはこれを読むべし

卒論執筆における心得や文章表現等は以下をぜひ参考にしてください．

- [卒業論文の書き方 | 中田 亨](https://researchmap.jp/blogs/blog_entries/view/77082/0eb9a69b5e4a770751c9f9b0f7f315d0#:~:text=%E9%80%9F%E3%81%8F%E6%A5%BD%E3%81%AB%E6%9B%B8%E3%81%8F%E3%81%9F%E3%82%81%E3%81%AE%E5%BF%83%E5%BE%97)
  > 速く楽に書くコツは，「広く浅く書いて積み上げる」ことと「人に見せる」ことである．
- [学位論文の書き方 #論文執筆 - Qiita](https://qiita.com/NaokiAkai/items/714dc2fd2f4d222a1ddf)
  > 通常の論文では省くようなこと（社会背景や超基礎的なことなど）も書くことが推奨される
- [論文における提案手法の書き方 #論文 - Qiita](https://qiita.com/NaokiAkai/items/e607e8e79949b1e11f95)
  > 提案手法には一般的なことを書く
  > 実装には実際にどの様にそれを実現したかを書く

先輩たちの資料を見たいときはここにあります．

- [サイバーセキュリティ研究室内部ページ - 卒論・修論](https://sites.google.com/cysec.cs.ritsumei.ac.jp/local/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E9%96%A2%E9%80%A3/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E8%B3%87%E6%96%99/%E5%8D%92%E8%AB%96%E4%BF%AE%E8%AB%96?authuser=2&pli=1)
- [サイバーセキュリティ研究室内部ページ - 論文発表会資料](https://sites.google.com/cysec.cs.ritsumei.ac.jp/local/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E9%96%A2%E9%80%A3/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E8%B3%87%E6%96%99/%E8%AB%96%E6%96%87%E7%99%BA%E8%A1%A8%E4%BC%9A%E8%B3%87%E6%96%99?pli=1&authuser=2)

### チェック項目

- [修士論文提出前の原稿チェックリスト内容編 - Google ドキュメント](https://docs.google.com/document/d/1YTgCme-9dwt2woAEOVX3MfOJutP2CgiJbEKGQi5nM3c/edit#heading=h.pfz4xdrzkyal)
- [卒・修論に見られる良くない表現](https://www.sci.hokudai.ac.jp/~minobe/class/bad_expressions.htm)
- [LaTeX における正しい論文の書き方 #LaTeX - Qiita](https://qiita.com/birdwatcher/items/5ec42b35d84d3ee2ffbb)

### GitHub でのレビュー

Git/GitHub での作業に慣れてる人向けにはなりますが，GitHub の Issue や Pull Request 機能を用いたレビュー方法もあるので紹介しておきます．

Pull Request でのレビューの場合，ファイル diff が見やすくなったり，[suggestion コメント機能](https://dev.classmethod.jp/articles/github-multi-line-code-suggestions/)が使えたりと便利な機能が使えます．
ただ，慣れてないと Pull Request を作成するまでの工程が難しいかもしれません．

他方で，GitHub Issue でのレビューの場合は特に Git の操作を行う必要なく簡単に始められます．
diff や suggestion コメント機能はありませんが，[Permalink](https://docs.github.com/ja/get-started/writing-on-github/working-with-advanced-formatting/creating-a-permanent-link-to-a-code-snippet) でコードを参照しながらレビューコメントすることができます．
実際に，[こちら](https://github.com/cysec-lab/css2023paper_sugahara/issues/1)の論文執筆時に GitHub Issue でのレビューを行ないました．
実例を確認したい場合はご参照ください．

> [!NOTE]GitHub の操作に慣れていない場合は，素直に PDF ファイルや紙媒体でレビューしてもらいましょう．
> 本セクションは読み飛ばしてもらって大丈夫です．

#### GitHub Issue でレビューを受けたい場合

GItHub Issue や Permalink について知りたい場合は以下をご確認ください．

- [Issue について - GitHub Docs](https://docs.github.com/ja/issues/tracking-your-work-with-issues/about-issues)
- [コードスニペットへのパーマリンクを作成する - GitHub Docs](https://docs.github.com/ja/get-started/writing-on-github/working-with-advanced-formatting/creating-a-permanent-link-to-a-code-snippet)

GitHub Issue でレビューを受けたい場合，以下のようなフローが考えられます．

1. レビュイーが，レビュー用の Issue を作成する．（`github.com/cysec-lab/{repo}/issues/new`）
2. レビュワーが，レビューで参照したい箇所の Permalink を作成する．
3. レビュワーが，Issue に Permalink とレビューコメントを記載し，コメントを投稿する．
4. レビュイーが，コメントを確認して修正．（Tips：Issue コメントへのスタンプを，修正ステータスにするのもよさそう）

#### Pull Request でのレビューを受けたい場合

GItHub PullRequest について知りたい場合は以下をご確認ください．

- [pull request の作成 - GitHub Docs](https://docs.github.com/ja/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)

Pull Request でのレビューを受けたい場合，以下のようなフローが考えられます．

1.  レビュー用のブランチを作成するため，init commit から branch を生やして push する．
2.  GitHub の Pull Request 作成ページにアクセスする．
3.  レビュー用 branch を base branch，執筆作業をしている branch を head branch として Pull Request を作成する．

base/head branch について知りたい場合は以下をご参照ください．

- [pull request の作成 - GitHub Docs](https://docs.github.com/ja/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request#changing-the-branch-range-and-destination-repository)の「ブランチの範囲と宛先リポジトリの変更」

## Tips

### 文章校正ツール

- [CyLint](https://cylint.ryuse.dev/): textlint を使って、日本語論文形式の LaTeX フォーマットなのかチェックできる Web サイト（provided by [xryuseix](https://twitter.com/ryusei_ishika)）
- [textlint](https://github.com/textlint/textlint): 特定のフォーマットに従った文章なのかチェックしてくれるツール．日本語論文形式の LaTeX フォーマットなのかチェックすることも可能
- Word：意外と文章構成ツールとして優秀．Word にコピペするだけという手軽さがよい．
- ChatGPT：文章校正タスクは得意領域．積極的に使っていこう．

### LaTeX

- [Create LaTeX tables online](https://www.tablesgenerator.com/latex_tables): LaTeX の表を簡単に作れるサイト．
- [LaTeXify Web](https://latexify.predicate.jp/): Python のコードを LaTeX 形式に変換してくれるサイト．
- [Mathpix](https://mathpix.com/pricing): OCR で画像の数式を読み取り，LaTeX 形式に変換してくれるサイト．
- [BibTeX entry from URL](https://chromewebstore.google.com/detail/bibtex-entry-from-url/mgpmgkhhbjgkpnanlmlhibjfgpdpgjec?hl=ja)：閲覧ページの BibTex 項目を自動生成してくれる Chrome 拡張機能．
- [LaTeX にソースコードを【美しく】貼る方法 #LaTeX - Qiita](https://qiita.com/ta_b0_/items/2619d5927492edbb5b03)

### VSCode で執筆する人向け

VSCode では GUI から Git の操作ができる．
デフォルトでも色々できるが，拡張機能を入れるとさらにできることが増える．

- [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)：リポジトリの history グラフを見れたり，git の操作ができる．

他にも便利な拡張機能が

- [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop): VSCodeにLaTeXの統合環境を作る拡張機能．コード補完やコードフォーマット, pdf プレビューなどの便利な機能を提供
- [Japanese Language Pack for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=MS-CEINTL.vscode-language-pack-ja)：VSCode を日本語化してくれる．
- [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)：GitHub Pro への登録が必要（学生無料）
- [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)：英単語の綴りミスを見つけてくれる．

## さいごに

論文の書き方や Git の操作など困ったことがあれば，先輩達にどんどん相談してください 👍
卒業研究 最後の追い込み，頑張っていきましょう 💪

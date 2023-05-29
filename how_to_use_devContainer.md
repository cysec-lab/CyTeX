# devContainer で構築する場合の手順

## Requirements

以下がインストール済みであること。

- VSCode
- VSCode 拡張機能 [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)
- Git
- Docker
- Docker Compose

## 手順

- リポジトリを fork する
- fork したリポジトリを clone する

```sh
git clone [forkしたリポジトリ名]
```

- clone したリポジトリを VSCode で開く

```sh
code [forkしたリポジトリ名]
```

- devContainer を起動する
  - 左下の`><`アイコン > `Reopen in Container` > `コンテナーで再度開く`を選択する
  - 初回起動時はビルドに 15 分ほどかかります
- 準備完了

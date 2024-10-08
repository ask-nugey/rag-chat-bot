
## RAG ChatBot
ChatGPTのAssistants APIを使用した簡易的なRAG ChatBotアプリ

フロントはStreamlit

## pythonのバージョン管理

- 使用ライブラリ`pyenv`
```sh
brew install pyenv
pyenv install 3.12
```

.python-versionファイルでバージョンを指定

## フォーマット、リント設定

下記のvscode拡張機能をインストール
- フォーマッター: [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter)
- リンター: [Flake8](https://marketplace.visualstudio.com/items?itemName=ms-python.flake8)

## プロジェクトのセットアップ

### 1. poetryの設定〜モジュールインストール

#### venvの作成場所をプロジェクト直下にする設定（globalに設定される）
```sh
poetry config virtualenvs.in-project true
```

#### 初回インストール
```sh
portry install

# もしくは
make init
```

### 2. portryで実行

```sh
poetry run streamlit run src/main.py

# もしくは
make dev
```

### portryの色々なコマンド
```sh
# モジュールのpyproject.tomlに追記とインストール
poetry add 【モジュール名】

# モジュールのpyproject.tomlからの削除とアンインストール
poetry remove 【モジュール名】

# 全てアップデート、最新時はスキップ
poetry update

# モジュールのアップデート、最新時はスキップ
poetry update 【モジュール名】

# updateをしたらどうなるかを表示
poetry update –-dry-run

# 全モジュールのpyproject.tomlからの削除とアンインストール
poetry env remove --all
```

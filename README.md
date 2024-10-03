
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
```

### 2. portryで実行

実行例1） python
```sh
portry run python src/main.py
```

実行例2） streamlit（今回はこっち↓）
```sh
poetry run streamlit run src/main.py
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

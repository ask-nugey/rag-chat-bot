.PHONY: init dev

# 初回インストール
init:
	poetry install

# Streamlit開発サーバーの起動
dev:
	poetry run streamlit run src/main.py

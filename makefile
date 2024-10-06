.PHONY: init dev streamlit

# 初回インストール
init:
	poetry install

# Python実行
dev:
	poetry  run src/main.py

# Streamlit開発サーバーの起動
streamlit:
	poetry run streamlit run src/main.py

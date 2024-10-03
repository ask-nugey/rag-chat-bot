.PHONY: init dev

# 初回インストール
init:
	portry install

# Streamlit開発サーバーの起動
dev:
	poetry run streamlit run src/main.py

import streamlit as st
from dotenv import load_dotenv
from openai import OpenAI

load_dotenv()
client = OpenAI()

st.title("RAG ChatBot")

chat_completion = client.chat.completions.create(
    messages=[
        {
            "role": "user",
            "content": "これはテストです。",
        },
    ],
    model="",
)

st.text(chat_completion.choices[0].message.content)

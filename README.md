# My Gemini API (Self-Hosted LLM)

This repo hosts an OpenAI-compatible API powered by [vLLM](https://github.com/vllm-project/vllm).

## 🚀 Run locally

```bash
# clone the repo
git clone https://github.com/<your-username>/my-gemini-api.git
cd my-gemini-api

# create venv
python -m venv .venv && source .venv/bin/activate

# install deps
pip install -r requirements.txt

# start vLLM with your model
python -m vllm.entrypoints.openai.api_server \
  --model meta-llama/Meta-Llama-3-8B-Instruct \
  --port 8000

# start FastAPI wrapper
uvicorn api:app --reload --port 3001

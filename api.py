from fastapi import FastAPI, Request
import httpx
import os

app = FastAPI()

# vLLM API endpoint (you started it separately on port 8000)
VLLM_URL = os.getenv("VLLM_URL", "http://localhost:8000/v1/chat/completions")

@app.get("/")
def root():
    return {"message": "Welcome to My Gemini API 🚀"}

@app.post("/v1/chat/completions")
async def chat(request: Request):
    """
    Proxy endpoint: accepts OpenAI-style requests and forwards to vLLM.
    """
    body = await request.json()

    async with httpx.AsyncClient(timeout=60) as client:
        response = await client.post(VLLM_URL, json=body)
        return response.json()


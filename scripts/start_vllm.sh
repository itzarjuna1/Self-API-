#!/bin/bash
# Start vLLM server with your chosen model

MODEL=${1:-"meta-llama/Meta-Llama-3-8B-Instruct"}
PORT=${2:-8000}

echo "🚀 Starting vLLM with model: $MODEL on port $PORT"

python -m vllm.entrypoints.openai.api_server \
    --model "$MODEL" \
    --port "$PORT"

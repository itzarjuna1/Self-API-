#!/bin/bash
# Start both vLLM and API for local dev

MODEL=${1:-"meta-llama/Meta-Llama-3-8B-Instruct"}

# Run vLLM in background
./scripts/start_vllm.sh "$MODEL" 8000 &

# Run API in foreground
./scripts/start_api.sh 3001

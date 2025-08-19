#!/bin/bash
# Start FastAPI wrapper

PORT=${1:-3001}

echo "🌐 Starting Gemini-like API on port $PORT"

uvicorn api:app --host 0.0.0.0 --port "$PORT" --reload

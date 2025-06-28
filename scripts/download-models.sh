#!/bin/bash

set -e

MODEL_DIR="models"
MODEL_NAME="tinyllama-1.1b-chat-v1.0.Q4_K_M.gguf"
MODEL_URL="https://huggingface.co/TheBloke/TinyLlama-1.1B-Chat-GGUF/resolve/main/tinyllama-1.1b-chat-v1.0.Q4_K_M.gguf"

echo "Creating model directory if it doesn't exist..."
mkdir -p "$MODEL_DIR"

echo "Downloading model: $MODEL_NAME"
wget -O "${MODEL_DIR}/${MODEL_NAME}" "$MODEL_URL"

echo "✅ Download complete: ${MODEL_DIR}/${MODEL_NAME}"

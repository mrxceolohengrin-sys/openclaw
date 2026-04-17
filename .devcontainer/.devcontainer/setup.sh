#!/bin/bash

echo "Installing Ollama..."

curl -fsSL https://ollama.com/install.sh | sh

echo "Starting Ollama..."

nohup ollama serve > ollama.log 2>&1 &

sleep 5

echo "Downloading model..."

ollama pull llama3.2:1b

echo "DONE"

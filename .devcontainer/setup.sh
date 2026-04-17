#!/bin/bash

set -e

echo "===== INSTALL OLLAMA ====="

curl -fsSL https://ollama.com/install.sh | sh

# sicherstellen, dass ollama gefunden wird
export PATH=$PATH:/usr/local/bin

echo "===== STOP OLD PROCESSES ====="

pkill ollama || true

echo "===== START OLLAMA SERVER ====="

# stabiler Start (wichtig für Codespaces)
nohup ollama serve > ollama.log 2>&1 < /dev/null &

sleep 6

echo "===== TEST SERVER ====="

curl -s http://localhost:11434

echo "===== DOWNLOAD MODEL ====="

ollama pull llama3.2:1b

echo "===== READY ====="

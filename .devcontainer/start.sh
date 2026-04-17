#!/bin/bash

echo "== START AI SYSTEM =="

export PATH=$PATH:/usr/local/bin

# alte Prozesse killen (wichtig in Codespaces)
pkill ollama || true

# server starten
nohup ollama serve > ollama.log 2>&1 < /dev/null &

sleep 5

# check
curl -s http://localhost:11434 && echo "Ollama OK"

# modell sicherstellen
ollama pull llama3.2:1b

echo "== AI BOOT COMPLETE =="

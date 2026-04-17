#!/bin/bash

set -e

echo "== INSTALL OLLAMA =="

curl -fsSL https://ollama.com/install.sh | sh

export PATH=$PATH:/usr/local/bin

echo "== SETUP DONE =="

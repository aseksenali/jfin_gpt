#!/bin/bash

# Start Ollama in the background.
ollama serve &
# Record Process ID.
pid=$!

# Pause for Ollama to start.
sleep 5

echo "🔴 Retrieving model ${MODEL_NAME}..."
ollama pull ${MODEL_NAME}
ollama run ${MODEL_NAME}
echo "🟢 Done!"

# Wait for Ollama process to finish.
wait $pid
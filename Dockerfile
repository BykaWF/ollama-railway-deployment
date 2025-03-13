FROM ollama/ollama:latest

# Create a directory for models
RUN mkdir -p /root/.ollama/models

# Expose the Ollama API port
EXPOSE 11434

# Start Ollama and pull the Mistral model
CMD ["sh", "-c", "ollama serve & sleep 10 && ollama pull mistral && tail -f /dev/null"]

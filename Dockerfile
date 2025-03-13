FROM ollama/ollama:latest

# Create a directory for models
RUN mkdir -p /root/.ollama/models

# Expose the Ollama API port
EXPOSE 11434

# Use shell form of CMD instead
CMD ollama serve & sleep 10 && ollama pull mistral && tail -f /dev/null

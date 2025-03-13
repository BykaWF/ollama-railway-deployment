# Use the official Ollama image as the base
FROM ollama/ollama:latest

# Set environment variables for the Ollama model and API configuration
ENV OLLAMA_MODEL=mistral
ENV OLLAMA_API_PORT=11434
ENV OLLAMA_API_HOST=0.0.0.0

# Expose the port for the API to communicate externally
EXPOSE 11434

# Run Ollama in headless mode, serving the Mistral model
CMD ["ollama", "serve", "--model", "mistral", "--host", "0.0.0.0", "--port", "11434"]

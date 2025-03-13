FROM ollama/ollama:latest

# Create a directory for models
RUN mkdir -p /root/.ollama/models

# Create a startup script
RUN echo '#!/bin/sh\n\
ollama serve &\n\
sleep 10\n\
ollama pull mistral\n\
tail -f /dev/null' > /startup.sh && \
    chmod +x /startup.sh

# Expose the Ollama API port
EXPOSE 11434

# Run the startup script
ENTRYPOINT ["/startup.sh"]

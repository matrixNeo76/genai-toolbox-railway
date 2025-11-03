# Dockerfile semplificato per genai-toolbox su Railway
FROM us-central1-docker.pkg.dev/database-toolbox/toolbox/toolbox:0.18.0

WORKDIR /app

# Copia il file di configurazione tools.yaml
# Le variabili d'ambiente saranno sostituite da Railway al runtime
COPY tools.yaml /app/tools.yaml

EXPOSE 5000

# Avvia toolbox con il file di configurazione
CMD ["toolbox", "--tools-file", "/app/tools.yaml"]

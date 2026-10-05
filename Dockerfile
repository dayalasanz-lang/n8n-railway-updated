FROM n8nio/n8n:2.41.6
USER root
RUN if command -v apk >/dev/null; then apk update && apk add --no-cache ffmpeg; else apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*; fi
USER node

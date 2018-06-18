FROM node:9.11-stretch

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        chromium \
        libgtk-3-0 \
        libatk-bridge2.0-0 \
    && rm /var/lib/apt/lists/*

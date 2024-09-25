FROM python:3.11.7-slim as dev

RUN apt-get update && apt-get install -y pandoc texlive-full \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
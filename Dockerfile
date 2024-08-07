# Dockerfile
ARG BASE_IMAGE=mcr.microsoft.com/dotnet/aspnet:8.0
FROM ${BASE_IMAGE}

# Detect the base image and set environment variables accordingly
RUN if [ -f /etc/alpine-release ]; then \
      PACKAGE_MANAGER="apk add --no-cache"; \
    else \
      PACKAGE_MANAGER="apt-get update && apt-get install -y"; \
    fi && \
    $PACKAGE_MANAGER curl && \
    curl -fsSL https://deb.nodesource.com/setup_current.x | bash - && \
    $PACKAGE_MANAGER nodejs && \
    npx playwright install --with-deps chromium && \
    if [ -f /etc/alpine-release ]; then \
      apk del curl nodejs; \
    else \
      apt-get remove --purge -y curl nodejs && \
      apt-get autoremove -y; \
    fi && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

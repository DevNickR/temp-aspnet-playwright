# Dockerfile
ARG BASE_IMAGE=mcr.microsoft.com/dotnet/aspnet:8.0
FROM ${BASE_IMAGE}

RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_current.x | bash - && \
    apt-get install -y nodejs && \
    npx playwright install --with-deps chromium && \
    apt-get remove --purge -y curl nodejs && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
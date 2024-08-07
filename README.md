# ASP.NET with Playwright Docker Image

[![Build and Push Docker Image](https://github.com/DevNickR/temp-aspnet-playwright/actions/workflows/docker-image.yml/badge.svg)](https://github.com/DevNickR/temp-aspnet-playwright/actions/workflows/docker-image.yml) 
[![Docker Pulls](https://img.shields.io/docker/pulls/nrivett/temp-aspnet-playwright)](https://hub.docker.com/r/nrivett/temp-aspnet-playwright) 
[![Docker Image Size](https://img.shields.io/docker/image-size/nrivett/temp-aspnet-playwright)](https://hub.docker.com/r/nrivett/temp-aspnet-playwright) 
[![Docker Stars](https://img.shields.io/docker/stars/nrivett/temp-aspnet-playwright)](https://hub.docker.com/r/nrivett/temp-aspnet-playwright)


This project provides a custom Docker image based on the official Microsoft ASP.NET image, with Playwright installed for web automation and testing. This image is ideal for developers who need to integrate Playwright tests into their ASP.NET applications.

## Features

- Based on the official Microsoft ASP.NET image.
- Installs Node.js and Playwright with all necessary dependencies for Chromium.
- Cleans up unnecessary files to keep the image size minimal.

## Supported Architectures

The Docker images for this project support the following architectures:
- `linux/amd64`
- `linux/arm64`

## Docker Hub Repository

You can find the Docker images for this project on Docker Hub: [nrivett/temp-aspnet-playwright](https://hub.docker.com/r/nrivett/temp-aspnet-playwright).

## GitHub Repository

The source code for this project is available on GitHub: [DevNickR/temp-aspnet-playwright](https://github.com/DevNickR/temp-aspnet-playwright).

## Tags

The Docker images are tagged based on the base ASP.NET version, specific variant, and the build date to allow for easy versioning and rolling updates.

- `nrivett/temp-aspnet-playwright:8.0-bookworm-slim` - Based on `mcr.microsoft.com/dotnet/aspnet:8.0-bookworm-slim`.
- `nrivett/temp-aspnet-playwright:8.0-jammy` - Based on `mcr.microsoft.com/dotnet/aspnet:8.0-jammy`.
- `nrivett/temp-aspnet-playwright:8.0-alpine` - Based on `mcr.microsoft.com/dotnet/aspnet:8.0-alpine`.
- `nrivett/temp-aspnet-playwright:8.0` - Based on `mcr.microsoft.com/dotnet/aspnet:8.0`.

Each tag also includes a date-based variant for rolling updates:
- `nrivett/temp-aspnet-playwright:8.0-bookworm-slim-YYYYMMDD`
- `nrivett/temp-aspnet-playwright:8.0-jammy-YYYYMMDD`
- `nrivett/temp-aspnet-playwright:8.0-alpine-YYYYMMDD`
- `nrivett/temp-aspnet-playwright:8.0-YYYYMMDD`

## Usage

To use this Docker image, you can pull it from Docker Hub and run it as follows:

```sh
docker pull nrivett/temp-aspnet-playwright:8.0
docker run -it --rm nrivett/temp-aspnet-playwright:8.0
```

Or with the date tag:
```sh
docker pull nrivett/temp-aspnet-playwright:8.0-YYYYMMDD
docker run -it --rm nrivett/temp-aspnet-playwright:8.0-YYYYMMDD
```

## Building and Pushing the Image
This project uses GitHub Actions to automate the build and push process. The workflow is triggered on pushes to the main branch and pull requests targeting the main branch. It is also scheduled to run once a week.
# ASP.NET with Playwright Docker Image

[![Build and Push Docker Image](https://github.com/yourusername/yourrepository/actions/workflows/docker-image.yml/badge.svg)](https://github.com/yourusername/yourrepository/actions/workflows/docker-image.yml)

This project provides a custom Docker image based on the official Microsoft ASP.NET image, with Playwright installed for web automation and testing. This image is ideal for developers who need to integrate Playwright tests into their ASP.NET applications.

## Features

- Based on the official Microsoft ASP.NET image.
- Installs Node.js and Playwright with all necessary dependencies for Chromium.
- Cleans up unnecessary files to keep the image size minimal.

## Docker Hub Repository

You can find the Docker images for this project on Docker Hub: [nrivett/aspnet-playwright](https://hub.docker.com/r/nrivett/aspnet-playwright).

## GitHub Repository

The source code for this project is available on GitHub: [yourusername/yourrepository](https://github.com/yourusername/yourrepository).

## Tags

The Docker images are tagged based on the base ASP.NET version and the build date to allow for easy versioning and rolling updates.

- `nrivett/aspnet-playwright:6.0` - Based on `mcr.microsoft.com/dotnet/aspnet:6.0`.
- `nrivett/aspnet-playwright:8.0` - Based on `mcr.microsoft.com/dotnet/aspnet:8.0`.
- `nrivett/aspnet-playwright:6.0-YYYYMMDD` - Based on `mcr.microsoft.com/dotnet/aspnet:6.0`, with the build date appended.
- `nrivett/aspnet-playwright:8.0-YYYYMMDD` - Based on `mcr.microsoft.com/dotnet/aspnet:8.0`, with the build date appended.

## Usage

To use this Docker image, you can pull it from Docker Hub and run it as follows:

```sh
docker pull nrivett/aspnet-playwright:8.0
docker run -it --rm nrivett/aspnet-playwright:8.0
```

Or with the date tag:
```sh
docker pull nrivett/aspnet-playwright:8.0-YYYYMMDD
docker run -it --rm nrivett/aspnet-playwright:8.0-YYYYMMDD
```

## Building and Pushing the Image
This project uses GitHub Actions to automate the build and push process. The workflow is triggered on pushes to the main branch and pull requests targeting the main branch. It is also scheduled to run once a week.
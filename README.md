# Retired

This project has been retired. Changes to Docker Hub mean there’s no longer any benefit in hosting it there. It has been moved to a private GitLab Registry.

# Original info

(not up-to-date)

## Purpose

Microsoft removed NodeJS from their .NET Core Docker images. However, NodeJS is required for modern Single Page Applications and whatnot.

Available [on Docker Hub](https://hub.docker.com/r/fuzzyk/dotnet-node-docker/) – use `docker pull fuzzyk/dotnet-node-docker` to get it.

## Ingredients

* Based on [mcr.microsoft.com/dotnet/core/sdk](https://hub.docker.com/_/microsoft-dotnet-core-sdk):2.2-sdk
* NodeJS LTS (10.16.1), updated only manually for now
* [Yarn](https://yarnpkg.com)
* rsync

## License

MIT

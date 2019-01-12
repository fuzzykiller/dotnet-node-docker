# Purpose

Microsoft removed NodeJS from their .NET Core Docker images. However, NodeJS is required for modern Single Page Applications and whatnot.

Available [on Docker Hub](https://hub.docker.com/r/fuzzyk/dotnet-node-docker/) – use `docker pull fuzzyk/dotnet-node-docker` to get it.

# Ingredients

* Based on [microsoft/dotnet](https://hub.docker.com/r/microsoft/dotnet/):2.2-sdk
* NodeJS LTS (10.15.0), updated only manually for now
* [Yarn](https://yarnpkg.com)
* rsync

# License

MIT
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build

WORKDIR /source

RUN dotnet tool install --global --version 5.6.7 GitVersion.Tool && \
    touch GitVersion.yml

COPY ["./.git", "./"] 

RUN export PATH="$PATH:/root/.dotnet/tools" && \
    dotnet-gitversion
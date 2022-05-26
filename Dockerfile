FROM mcr.microsoft.com/vscode/devcontainers/python:3.9

RUN apt-get update && apt-get install -y nodejs npm g++

RUN pip3 --disable-pip-version-check --no-cache-dir install duckdb==0.3.4 dbt-duckdb \
    && rm -rf /tmp/pip-tmp

ENV DBT_PROFILES_DIR=/workspaces/datadex
WORKDIR /workspaces/datadex

RUN curl -fsSL https://deb.nodesource.com/setup_current.x | sudo bash - && sudo apt-get install -y nodejs
RUN npm install -g @rilldata/rill

ENTRYPOINT "/bin/bash"
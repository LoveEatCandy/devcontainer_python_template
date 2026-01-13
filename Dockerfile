FROM mcr.microsoft.com/devcontainers/python:2-3.10-trixie

WORKDIR /workspaces

RUN sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list.d/debian.sources \
    && sed -i 's/security.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list.d/debian.sources \
    && curl -fsSL https://deb.nodesource.com/setup_24.x | sudo -E bash - \
    && apt-get update \
    && apt-get install -y git vim ca-certificates sudo nodejs

RUN pip3 install -U pip setuptools wheel \
    && pip3 install pdm \
    && git clone https://github.com/zsh-users/zsh-autosuggestions /home/vscode/.oh-my-zsh/custom/plugins/zsh-autosuggestions

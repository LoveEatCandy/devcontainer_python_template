FROM mcr.microsoft.com/devcontainers/python:2-3.10-trixie

WORKDIR /workspaces

RUN sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list.d/debian.sources \
    && sed -i 's/security.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list.d/debian.sources

RUN pip install uv toml \
    && git clone https://github.com/zsh-users/zsh-autosuggestions /home/vscode/.oh-my-zsh/custom/plugins/zsh-autosuggestions

COPY pyproject.toml .devcontainer/get_requirements.py /workspaces/
RUN python3 get_requirements.py \
    && pip3 install -r requirements-all.txt

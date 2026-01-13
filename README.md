Vscode devcontainer template for Python projects.
---

## Quick Start

1. Install Docker and [Dev containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension for VSCode.
2. Clone this repository and put in `.devcontainer` folder in your project folder.
3. Install `pdm` and generate `pdm.lock`.
4. `mkdir -p $HOME/.claude && mkdir -p $HOME/.codex` to store claude and codex config.
5. Restart your project in a container: `Dev Containers: Reopen in Container`

## Notes

- Use tsinghua mirror for apt and pip by default.
- Use pdm as package manager.
- Python version is set to 3.10 by default, you can change it in `Dockerfile` file.
- Install codex and claude with registry(https://registry.npmmirror.com) by default, you can update them in `post_create_command.sh` if not needed.

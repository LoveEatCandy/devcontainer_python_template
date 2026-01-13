sudo npm i -g @openai/codex --registry=https://registry.npmmirror.com
sudo npm i -g @anthropic-ai/claude-code --registry=https://registry.npmmirror.com

# Install dev dependencies
pdm sync -G dev

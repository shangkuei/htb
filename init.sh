#!/usr/bin/env bash
set -euo pipefail

# install z4h
curl -fsSL https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install | sh

# install direnv
# curl -sfL https://direnv.net/install.sh | bash

# configure git globally
git config --global pull.ff only

# patch z4h
git clone https://github.com/shangkuei/zsh4humans ~/.config/z4h
pushd ~/.config/z4h
git fetch origin main
git checkout main
ln -sf ~/.config/z4h/env.zsh ~/.zshrc
ln -sf ~/.config/z4h/env.zsh ~/.env.sh
popd

# patch p10k
git clone https://github.com/shangkuei/powerlevel10k ~/.config/p10k
pushd ~/.config/p10k
git fetch origin main
git checkout main
ln -sf ~/.config/p10k/p10k.zsh ~/.p10k.zsh
popd

# patch tmux
git clone https://github.com/shangkuei/.tmux.git ~/.config/tmux
pushd ~/.config/tmux
git fetch origin main
git checkout main
ln -sf ~/.config/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/.config/tmux/tmux.conf.local ~/.tmux.conf.local
popd



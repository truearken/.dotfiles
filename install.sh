# !/usr/bin/env bash

# omz
if ! type "omz" > /dev/null; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# nix
if ! type "nix-shell" > /dev/null; then
    sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --no-daemon
fi

# devbox
if ! type "devbox" > /dev/null; then
    curl -fsSL https://get.jetify.com/devbox | bash
fi

# pacman packages
sudo pacman -S zsh tmux k9s fzf xclip direnv kubectl gcc lua unzip ripgrep podman jq neovim less go

# shell
if [[ $SHELL != "/usr/bin/zsh" ]]; then
    chsh -s /usr/bin/zsh
fi

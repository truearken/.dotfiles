# !/usr/bin/env bash

# pacman packages
sudo pacman -S --needed zsh tmux k9s fzf xclip direnv kubectl gcc lua unzip ripgrep podman jq neovim less go

# shell
if [[ $SHELL != "/usr/bin/zsh" ]]; then
    chsh -s /usr/bin/zsh
fi

# omz
if ! test -f /usr/local/bin/devbox; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    mv .zshrc.pre-oh-my-zsh .zshrc
fi

# nix
if ! test -f ~/.nix-profile/bin/nix-shell; then
    sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --no-daemon
fi

# devbox
if ! test -f /usr/local/bin/devbox; then
    curl -fsSL https://get.jetify.com/devbox | bash
fi


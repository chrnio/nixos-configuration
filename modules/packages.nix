{ pkgs, ... }:
{
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    # cli
    git
    curl
    wget
    ripgrep
    fd
    fzf
    tree
    bat
    eza
    yazi
    zoxide
    btop
    starship
    tealdeer
    fastfetch
    stow
    tmux
    nh
    jq
    yq
    aria2
    httpie
    xdg-user-dirs
    glib

    # archives
    zip
    unzip
    unrar

    # media and docs
    ffmpeg

    # editors
    neovim
    tree-sitter
    zed-editor

    # apps
    proton-pass
    obsidian
    discord
    brave
    spotify
  ];
}

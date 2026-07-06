{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # c/c++
    cmake
    clang
    clang-tools
    pkgconf
    gcc
    gdb
    gnumake

    # rust
    rustup
    rust-analyzer

    # go
    go
    gopls

    # python
    python3
    ruff

    # js/ts
    nodejs
    bun
    typescript-language-server

    # java
    temurin-bin-21
    maven
    gradle
    jdt-language-server

    # lua
    lua54Packages.lua
    lua-language-server

    # shell
    bash-language-server
    shellcheck

    # misc lsp and tooling
    nixd
    taplo
    yaml-language-server
    marksman
    vscode-langservers-extracted
    lldb
  ];
}

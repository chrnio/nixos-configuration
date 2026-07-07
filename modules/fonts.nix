{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    # system fonts
    adwaita-fonts
    nerd-fonts.symbols-only

    # monospaced fonts
    nerd-fonts.jetbrains-mono
    nerd-fonts._0xproto
    nerd-fonts.intone-ono
    maple-mono.Normal-TTF
  ];

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      serif = [ "DejaVu Serif" ];
      sansSerif = [ "Adwaita Sans" ];
      monospace = [ "DejaVu Sans Mono" ];
    };
  };

}

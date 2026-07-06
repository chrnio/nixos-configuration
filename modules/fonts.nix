{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    adwaita-fonts
    nerd-fonts.jetbrains-mono
    nerd-fonts._0xproto
    nerd-fonts.symbols-only
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

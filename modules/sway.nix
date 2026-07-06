{ pkgs, ... }:
{
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    xwayland.enable = true;
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --cmd sway";
        user = "greeter";
      };
    };
  };

  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;
  hardware.graphics.enable = true;
  security.pam.services.swaylock = { };
  programs.dconf.enable = true;

  xdg.portal = {
    enable = true;
    config.common.default="*";
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-wlr
    ];
  };


  environment.systemPackages = with pkgs; [
    polkit_gnome
    adw-gtk3
    swaybg
    swayidle
    swaylock
    waybar
    foot
    rofi
    mako
    slurp
    grim
    pamixer
    playerctl
    brightnessctl
    wl-clipboard
    adwaita-icon-theme
    bluetui
    bibata-cursors

    nautilus
    papers
    loupe
    papers
    gnome-clocks
  ];

  environment.sessionVariables = {
    XCURSOR_THEME = "Bibata-Modern-Ice";
    XCURSOR_SIZE = "24";
  };
}



{ pkgs, ... }:
{
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    xwayland.enable = true;
  };

  services.greetd = {
    enable = false;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --remember --cmd sway";
        user = "greeter";
      };
    };
  };

  services.displayManager.ly = {
    enable = true;
    settings = {
      clock = "%H:%M";
    };
  };

  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.swaylock = { };
  programs.seahorse.enable = true;
  hardware.graphics.enable = true;
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
    i3status
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
    mpv
    pavucontrol
   
    # GNOME Apps
    xdg-user-dirs
    glib
    nautilus
    papers
    loupe
    papers
    gnome-clocks
    fractal
  ];

  environment.sessionVariables = {
    XCURSOR_THEME = "Bibata-Modern-Ice";
    XCURSOR_SIZE = "24";
  };
}



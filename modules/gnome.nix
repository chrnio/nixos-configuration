{ pkgs, ... }:
{

  # Enable X11
  services.xserver.enable = true;

  # GNOME Desktop Env
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  # Keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Disable CUPS to not print documents, also what even is CUPS?
  services.printing.enable = false;

  # Disable bloat
  environment.gnome.excludePackages = with pkgs; [
    gnome-tour
    gnome-maps
    gnome-music
    gnome-connections
    gnome-characters
    gnome-weather
    gnome-contacts
    gnome-calendar

    epiphany
    simple-scan
  ];

  environment.systemPackages = with pkgs; [
  ];
}

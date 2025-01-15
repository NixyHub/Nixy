{ config, ... }: {
  imports = [ ../../nixos/variables-config.nix ];

  config.var = {
    hostname = "Obilisk";
    username = "galileo";
    configDirectory = "/home/" + config.var.username
      + "/.config/nixos"; # The path of the nixos configuration directory

    keyboardLayout = "ie";

    location = "Dublin";
    timeZone = "Europe/Dublin";
    defaultLocale = "en_UK.UTF-8";
    extraLocale = "en_IE.UTF-8";

    git = {
      username = "Galileo-dev";
      email = "32818066+Galileo-dev@users.noreply.github.com";
    };

    autoUpgrade = false;
    autoGarbageCollector = true;

    # Choose your theme variables here
    theme = import ../../themes/var/2025.nix;
  };
}

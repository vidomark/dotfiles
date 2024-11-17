{ pkgs, ... }: {

  ##########################################################################
  # 
  #  Install all apps and packages here.
  #
  ##########################################################################

  # Install packages from nix's official package repository.
  #
  # The packages installed here are available to all users, and are reproducible across machines, and are rollbackable.
  # But on macOS, it's less stable than homebrew.
  #
  # Related Discussion: https://discourse.nixos.org/t/darwin-again/29331
  environment.systemPackages = with pkgs; [];

  environment.variables.EDITOR = "nvim";

  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true; # Fetch the newest stable branch of Homebrew's git repo
      upgrade = true; # Upgrade outdated casks, formulae, and App Store apps
      # 'zap': uninstalls all formulae(and related files) not listed in the generated Brewfile
      # cleanup = "zap";
    };

    # Applications to install from Mac App Store using mas.
    # You need to install all these Apps manually first so that your apple account have records for them.
    # otherwise Apple Store will refuse to install them.
    # For details, see https://github.com/mas-cli/mas 
    masApps = {
      # Xcode = 497799835;
      # Wechat = 836500024;
      # NeteaseCloudMusic = 944848654;
      # QQ = 451108668;
      # WeCom = 1189898970;  # Wechat for Work
      # TecentMetting = 1484048379;
      # QQMusic = 595615424;
    };

    taps = [
      "homebrew/services"
    ];

    # `brew install`
    brews = [
      "wget" # download tool
      "curl" # no not install curl via nixpkgs, it's not working well on macOS!
      "aria2" # download tool
      "httpie" # http client
      "zsh-autosuggestions"
      "zsh-syntax-highlighting"
      "zsh-you-should-use"
      "zsh-vi-mode"
      "neovim"
    ];

    # `brew install --cask`
    casks = [
      "firefox"
      # "google-chrome"
      # "arc"

      "anki"
      "iina" # video player
      "raycast"
      "stats" # beautiful system monitor
      "font-monaspace"
      "karabiner-elements"
      "amazon-q"
      "kindavim"
      "hammerspoon"
      "obsidian"

      # Development
      "alacritty"
      "kitty"
      # "intellij-idea"
      "wireshark" # network analyzer
      "postman"
    ];
  };
}

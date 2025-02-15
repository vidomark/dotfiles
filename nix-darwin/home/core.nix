{config, pkgs, ...}: {
  home.packages = with pkgs; [
    # Shell and Terminal Tools
    zsh               # Z shell, a powerful command-line shell
    # tmux              # Terminal multiplexer for managing multiple terminal sessions
    starship          # A theme for Zsh that provides a rich prompt

    # Version Control
    git               # Distributed version control system
    lazygit           # Simple terminal UI for Git commands

    # Archives and Compression
    zip               # Utility for packaging and compressing files
    xz                # High-ratio data compression program
    unzip             # Extractor for .zip files
    p7zip             # Command-line version of 7-Zip, a file archiver

    # Programming Languages and Tools
    nodejs_20         # JavaScript runtime built on Chrome's V8 engine
    jdk21             # Java Development Kit for Java 21
    python3           # Python programming language interpreter
    rustup            # Rust toolchain installer
    maven             # Build automation tool for Java projects
    gradle            # Build automation tool for multi-language projects

    # Utilities
    ripgrep           # Fast search tool for recursively searching directories
    jq                # Command-line JSON processor
    yq-go             # Command-line YAML processor
    fzf               # Command-line fuzzy finder
    fzf-git-sh        # Bash and zsh key bindings for Git objects, powered by fzf
    zsh-vi-mode       # Command-line vim bindings
    aria2             # Multi-protocol & multi-source download utility
    socat             # Multipurpose relay for bidirectional data transfer
    nmap              # Network discovery and security auditing tool
    bat               # Enhanced `cat` with syntax highlighting
    fd                # Simple, fast, and user-friendly alternative to `find`
    htop              # Interactive process viewer
    btop              # Resource monitor with a beautiful UI
    lsd               # Modern replacement for `ls` with color support
    openssl           # Toolkit for SSL/TLS and cryptography
    tldr              # Simplified and community-driven man pages
    zoxide            # Smarter `cd` command for navigating directories
    tree-sitter       # Incremental parsing system for syntax highlighting
    diff-so-fancy     # Enhances `git diff` output with color and formatting
    direnv            # Environment switcher for shell sessions

    # System Tools
    file              # Determines file type
    which             # Locates a command
    gnused            # GNU version of the stream editor `sed`
    gnutar            # GNU version of the tar archiving utility
    gawk              # GNU version of the text processing language `awk`
    zstd              # Fast compression algorithm
    caddy             # Web server with automatic HTTPS
    gnupg             # GNU Privacy Guard for encryption and signing
    jmeter            # Load testing tool for analyzing and measuring performance
    just              # Task runner for command execution
    skhd              # Hotkey daemon for macOS
    yabai             # Tiling window manager for macOS
    stow              # Symlink farm manager for managing dotfiles

    # Miscellaneous
    tree              # Displays directory structure in a tree format
    checkstyle        # Code style checker for Java
    glow              # Markdown previewer in the terminal
  ];

  # home.file = {
    # ".zshrc".source = "${config.home.homeDirectory}/dotfiles/.zshrc";
    # ".config/skhd".source = ~/dotfiles/skhd;
    # ".config/starship".source = ~/dotfiles/starship;
    # ".config/zellij".source = ~/dotfiles/zellij;
    # ".config/nvim".source = ~/dotfiles/nvim;
    # ".config/nix-darwin".source = ~/dotfiles/nix-darwin;
  # };

  programs = {
    fzf = {
      enable = true;
      enableZshIntegration = true;
      enableBashIntegration = true;
    };

    neovim = {
      enable = true;
      defaultEditor = true;
      vimAlias = true;
    };

    # skim provides a single executable: sk.
    # Basically anywhere you would want to use grep, try sk instead.
    skim = {
      enable = true;
      enableBashIntegration = true;
    };
  };
}

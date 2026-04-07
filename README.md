# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Bootstrap

On a fresh machine:

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply vidomark
```

This will:

1. Install chezmoi
2. Clone this repo
3. Install Homebrew (macOS)
4. Install all packages via `brew bundle`
5. Deploy all config files
6. Set up tmux plugins (TPM)
7. Set up yazi plugins

## What's managed

### Config files

| Tool | Config path | Description |
|------|------------|-------------|
| zsh | `~/.config/zsh/.zshrc`, `.zshenv` | Shell config with oh-my-zsh, vi-mode, fzf-tab, forgit |
| ghostty | `~/.config/ghostty/config` | Terminal emulator (Gruvbox Material, custom shaders) |
| tmux | `~/.config/tmux/tmux.conf` | Terminal multiplexer (C-Space prefix, vi-mode, gruvbox) |
| neovim | `~/.config/nvim/` | LazyVim-based config with LSP, treesitter, fzf-lua |
| ideavim | `~/.config/ideavim/` | JetBrains vim emulation with full keymap |
| starship | `~/.config/starship.toml` | Shell prompt (nerd-font-symbols) |
| bat | `~/.config/bat/config` | Cat replacement (Solarized dark) |
| btop | `~/.config/btop/btop.conf` | System monitor (vim keys) |
| yazi | `~/.config/yazi/` | File manager with git, starship, eza-preview plugins |
| karabiner | `~/.config/karabiner/` | Key remapping (Y/Z swap, Caps Lock to Escape) |

### Externals (fetched, not checked in)

| Source | Target | Purpose |
|--------|--------|---------|
| ohmyzsh/ohmyzsh | `~/.config/zsh/ohmyzsh` | Zsh framework |
| Aloxaf/fzf-tab | `~/.config/zsh/plugins/fzf-tab` | Fzf-powered tab completion |
| wfxr/forgit | `~/.config/zsh/plugins/forgit` | Git fuzzy finder |
| tmux-plugins/tpm | `~/.tmux/plugins/tpm` | Tmux plugin manager |

### Bootstrap scripts

| Script | Type | OS | Purpose |
|--------|------|----|---------|
| `10-install-homebrew.sh` | run_once, before | darwin | Install Homebrew |
| `20-brew-bundle.sh` | run_onchange, before | darwin | Install packages (re-runs on Brewfile change) |
| `80-setup-tmux-tpm.sh` | run_once, after | darwin, linux | Clone TPM and install tmux plugins |
| `85-setup-yazi-plugins.sh` | run_once, after | darwin, linux | Install yazi plugins via `ya pack` |

### Packages

All packages are declared in the [Brewfile](Brewfile) at the repo root.

## Daily workflow

```bash
# Edit a config
chezmoi edit ~/.config/ghostty/config

# See what changed
chezmoi diff

# Apply changes
chezmoi apply

# Pull latest from remote and apply
chezmoi update

# Add a new config file
chezmoi add ~/.config/foo/bar.conf
```

## Repo structure

```
.
├── .chezmoiroot          # Points chezmoi to home/
├── .gitignore
├── Brewfile              # Homebrew packages (outside chezmoi root)
├── README.md
└── home/                 # chezmoi source directory
    ├── .chezmoiexternal.toml   # External dependencies
    ├── .chezmoiignore          # Files to skip
    ├── .chezmoiscripts/        # Bootstrap scripts
    └── private_dot_config/     # ~/.config/ files
        ├── bat/
        ├── btop/
        ├── ghostty/
        ├── ideavim/
        ├── nvim/
        ├── private_karabiner/
        ├── starship.toml
        ├── tmux/
        ├── yazi/
        └── zsh/
```

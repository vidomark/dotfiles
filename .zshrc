# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
export ZSH="$HOME/.oh-my-zsh"
export VISUAL=nvim
export BAT_THEME="gruvbox-dark"
export LESS='-i'

source $HOME/.init-oh-my-zsh.sh
source $HOME/.pl9k.sh
source $ZSH/oh-my-zsh.sh
source $HOME/.fzf-config.sh
source $HOME/.init-fzf-git.sh
source $HOME/fzf-git.sh/fzf-git.sh
source $HOME/.cursor-mode.sh
source $HOME/.history-config.zsh
source $HOME/.keybindings.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-you-should-use/you-should-use.plugin.zsh

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

alias lg="lazygit"
alias vim='nvim'
alias ls="lsd"
alias cd="z"
alias cat="bat"

plugins=(
  git
  git-prompt
  aliases
  sdk
)

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

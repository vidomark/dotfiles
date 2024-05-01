# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"


export ZSH="$HOME/.oh-my-zsh"
export VISUAL=nvim
export BAT_THEME="gruvbox-dark"
export LESS='-i'

source $HOME/.pl9k.sh
source $ZSH/oh-my-zsh.sh
source $HOME/.fzf-config.sh
source $HOME/.init-fzf-git.sh
source $HOME/fzf-git.sh/fzf-git.sh
source $HOME/.cursor-mode.sh
source $HOME/.init-vim-anywhere.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-you-should-use/you-should-use.plugin.zsh

bindkey -v
bindkey -M vicmd v edit-command-line
bindkey -M vicmd ^g^g fzf-git-hashes-widget
bindkey -M vicmd ^g^z fzf-git-lreflogs-widget
bindkey -M viins 'jk' vi-cmd-mode

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

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


# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"

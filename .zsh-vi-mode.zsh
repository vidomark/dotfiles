ZVM_VI_INSERT_ESCAPE_BINDKEY=jk

# Set keybindings for zsh-vi-mode insert mode
function zvm_after_init() {
  zvm_bindkey viins "^R" fzf-history-widget

  for o in files branches tags remotes hashes stashes each_ref; do
    eval "zvm_bindkey viins '^g^${o[1]}' fzf-git-$o-widget"
    eval "zvm_bindkey viins '^g${o[1]}' fzf-git-$o-widget"
  done
}

# Set keybindings for zsh-vi-mode normal and visual modes
function zvm_after_lazy_keybindings() {
  for o in files branches tags remotes hashes stashes each_ref; do
    eval "zvm_bindkey vicmd '^g^${o[1]}' fzf-git-$o-widget"
    eval "zvm_bindkey vicmd '^g${o[1]}' fzf-git-$o-widget"
    eval "zvm_bindkey visual '^g^${o[1]}' fzf-git-$o-widget"
    eval "zvm_bindkey visual '^g${o[1]}' fzf-git-$o-widget"
  done
}

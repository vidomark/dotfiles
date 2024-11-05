ZVM_VI_INSERT_ESCAPE_BINDKEY=jk

function zvm_after_init() {
  zvm_bindkey viins "^R" fzf-history-widget
}


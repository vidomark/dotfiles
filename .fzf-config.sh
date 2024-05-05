export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix"

_fzf_compgen_path() {
  fd --hidden "$1"
}

_fzf_compgen_dir() {
  fd --type=d --hidden "$1"
}


export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'lsd --tree| head -200'"

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'lsd --tree --depth 2 --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo $'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "bat -n --color=always --line-range :500 {}" "$@" ;;
  esac
}


_gen_fzf_default_opts() {

local color00='#202020'
local color01='#2a2827'
local color02='#504945'
local color03='#5a524c'
local color04='#bdae93'
local color05='#ddc7a1'
local color06='#ebdbb2'
local color07='#fbf1c7'
local color08='#ea6962'
local color09='#e78a4e'
local color0A='#d8a657'
local color0B='#a9b665'
local color0C='#89b482'
local color0D='#7daea3'
local color0E='#d3869b'
local color0F='#bd6f3e'

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"

}

_gen_fzf_default_opts

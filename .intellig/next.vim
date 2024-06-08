""""""""
" Next "
""""""""

" Next actions - prefixed by the right square bracket ]
let g:WhichKeyDesc_next                          = "ú Next"

let g:WhichKeyDesc_next_word_at_caret            = "úú Word at Caret"
nmap úú <Action>(FindWordAtCaret)

let g:WhichKeyDesc_next_error                    = "úe Error"
nmap úe <Action>(GotoNextError)

let g:WhichKeyDesc_next_tab                      = "út Tab"
nmap út <Action>(NextTab)

let g:WhichKeyDesc_next_split                    = "ús Split"
nmap ús <Action>(NextSplitter)

let g:WhichKeyDesc_next_method                   = "úm Method"
nmap úm <Action>(MethodDown)

let g:WhichKeyDesc_next_bookmark                 = "úb Bookmark"
nmap úb <Action>(GotoNextBookmark)

let g:WhichKeyDesc_next_bookmark_in_current_file = "úB Bookmark in CURRENT File"
nmap úB <Action>(GotoNextBookmarkInEditor)

let g:WhichKeyDesc_next_project_window           = "úp Project Window"
nmap úp <Action>(NextWindow)

""""""""""""
" Previous "
""""""""""""
" Previous actions - prefixed by the left square bracket [
let g:WhichKeyDesc_previous                           = "ő Previous"

let g:WhichKeyDesc_previous_word_at_caret             = "őő Word at Caret"
nmap őő <Action>(FindPrevWordAtCaret)

let g:WhichKeyDesc_previous_error                     = "őe Error"
nmap őe <Action>(GotoPreviousError)

let g:WhichKeyDesc_previous_tab                       = "őt Tab"
nmap őt <Action>(PreviousTab)

let g:WhichKeyDesc_previous_split                     = "ős Split"
nmap ős <Action>(PrevSplitter)

let g:WhichKeyDesc_previous_method                    = "őm Method"
nmap őm <Action>(MethodUp)

let g:WhichKeyDesc_previous_bookmark                  = "őb Bookmark"
nmap őb <Action>(GotoPreviousBookmark)

let g:WhichKeyDesc_previous_bookmark_in_current_file  = "őB Bookmark in CURRENT File"
nmap őB <Action>(GotoPreviousBookmarkInEditor)

" Previous Project
let g:WhichKeyDesc_previous_project_window            = "őp Previous Project"
nmap őp <Action>(PreviousProjectWindow)

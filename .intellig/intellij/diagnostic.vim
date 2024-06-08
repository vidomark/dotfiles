"""""""""""""""""""
" Diagnostics Commands "
"""""""""""""""""""

" Commands for navigating and handling errors and diagnostics
let g:WhichKeyDesc_error                           = "<leader>e Diagnostics"

" Go to Next Error
let g:WhichKeyDesc_error_next                      = "<leader>ek Go to Next Error"
map <leader>ek <Action>(GotoNextError)

" Go to Previous Error
let g:WhichKeyDesc_error_previous                  = "<leader>ej Go to Previous Error"
map <leader>ej <Action>(GotoPreviousError)

" Show Error Description
let g:WhichKeyDesc_error_description               = "<leader>ed Show Error Description"
map <leader>ed <Action>(ShowErrorDescription)

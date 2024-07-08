""""""""""
" Global "
""""""""""

" FIXME Recent Projects and Blackhole register does not initialize on startup. Only when you reload vimrc once does it work

" Exit insert mode
inoremap jk <Esc>

" Ergonomic escape - other alternative keys I used in the past: jk, <C-j>
" map <C-c> <Esc>


" Easier navigation
map H ^
map L $
" NOTE: IdeaVim's smart join can be triggered using Ctrl + Shift + J

" Method movements
" map [m őm
" map ]m úm

" Faster change/delete of a word
map C ciw
map D daw

" NOTE: onoremap is not implemented
nnoremap cic ci{
nnoremap dic di{
nnoremap yic yi{
nnoremap vic vi{
nnoremap cac ca{
nnoremap dac da{
nnoremap yac ya{
nnoremap vac va{

" NOTE: onoremap is not implemented
nnoremap civ ci[
nnoremap div di[
nnoremap yiv yi[
nnoremap viv vi[
nnoremap cav ca[
nnoremap dav da[
nnoremap yav ya[
nnoremap vav va[

" NOTE: onoremap is not implemented
nnoremap cio ci(
nnoremap dio di(
nnoremap yio yi(
nnoremap vio vi(
nnoremap cao ca(
nnoremap dao da(
nnoremap yao ya(
nnoremap vao va(

" Select all
nnoremap <C-c> ggVG

" Better code navigation
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

" Better search navigation
nnoremap n nzzzv
nnoremap N Nzzzv

" Void register deletion
noremap x "_x
vnoremap c "_c
vnoremap p "_dp

  " Easier indentation
vnoremap ő <gv
vnoremap ú >gv

" Start newline without entering insert mode and maintains cursor position
map <CR> m`o<Esc>``
map <S-CR> m`i<CR><ESC>``

" Forward/Back
map <C-o> <Action>(Back)
map <C-i> <Action>(Forward)

" Switch to split by direction
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Method movement
map <C-S-p> <Action>(MethodUp)
map <C-S-n> <Action>(MethodDown)

" Move code using h/j/k/l rather than IntelliJ's keybindings that uses arrow keys
map <C-S-h> <Action>(MoveElementLeft)
map <C-S-l> <Action>(MoveElementRight)
map <C-S-j> <Action>(MoveStatementDown)
map <C-S-k> <Action>(MoveStatementUp)

" Select file in project view
let g:WhichKeyDesc_select_in_project_view_                                                   = "<leader>1"
map <leader>1 <Action>(SelectInProjectView)

" Clear search highlight
let g:WhichKeyDesc_no_highlight                                                              = "<leader>n"
nnoremap <leader>n :nohlsearch<CR>

" Quick docoumentation
nmap K <Action>(QuickJavaDoc)

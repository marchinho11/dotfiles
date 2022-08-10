" NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" fzf
nmap <leader>p :FZF<CR>
nnoremap <leader>f :Rg

" switching between buffers
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" I can type :help on my own, thanks.
map <F1> <Esc>
imap <F1> <Esc>

" Delete to black hole
nnoremap d "_d
nnoremap dd "_dd
vnoremap d "_d
vnoremap dd "_dd

" Clear highlight on pressing ESC twice
nnoremap <esc><esc> :noh<return>

" Fugitive
nnoremap Gd :Gvdiffsplit<cr>

" Left and right can switch buffers
" nnoremap <left> :bp<CR>
" nnoremap <right> :bn<CR>


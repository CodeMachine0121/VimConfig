source ~/.config/nvim/.vim/plug.vim
set mouse=a
set rnu
set encoding=UTF-8
set wrap linebreak
" Reload config
nmap zso : source ~/.config/nvim/init.vim<CR>


" [Edit]
syntax on
set showcmd
set autoindent
set nowrap
set incsearch
set cindent
set smartindent
set cursorline
syntax enable
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
set sw=4
set ts=4
set smarttab
set tabstop=4
set number
set laststatus=2

" [Move]
nmap hh ^
nmap ll $
map <C-right> w
map <C-left> b
" back where go definition is set in coc-config
map zb  <C-o>


" select suggestion
" TextEdit might fail if hidden is not set.
set hidden

" Give more space for displaying messages.
set cmdheight=2

" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" [Insert]
nmap z, A,<Esc>
imap z, <Esc>A,
nmap z; A;<Esc>
imap z; <Esc>A;
nmap z. A.<Esc>
imap z. <Esc>A.
vmap S :action SurroundWith<CR>
map zrt <Esc>hhireturn <Esc>z;
imap zrt <Esc>hhireturn <Esc>z;


set clipboard=unnamedplus
set visualbell



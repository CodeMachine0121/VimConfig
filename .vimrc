set fileencoding=utf-8
set ff=unix
set mouse=a
autocmd FileType vim setlocal fileformat=unix
set fileformat=unix
source ~/.vim/plug.vim
set rnu
set encoding=UTF-8
" Reload config
nmap zso : source ~/.vimrc

" Load the colorscheme
set background=dark

" [Edit]
syntax on
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


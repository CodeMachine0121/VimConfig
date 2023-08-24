call plug#begin()
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }|
			\ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight.git'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" tag bar
Plug 'majutsushi/tagbar'

" jump
Plug 'easymotion/vim-easymotion'

" markdown 
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

" theme
Plug 'NLKNguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'

" airline
Plug 'vim-airline/vim-airline'

" coci 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" syntax  highlighting 
Plug 'sheerun/vim-polyglot'

" Project Manager
Plug 'tpope/vim-projectionist'

" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
filetype indent off   " Disable file-type-specific indentation
syntax off            " Disable syntax highlighting

"NERD
let NERDTreeShowHidden=1
nmap <Leader>r :NERDTreeRefreshRoot <CR>
nmap <Leader>f :NERDTreeFind<CR>
nmap <F5> :NERDTreeToggle <CR>
" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree
" default: git (auto find in path)
let g:NERDTreeGitStatusGitBinPath = '/usr/bin/git' 
let g:NERDTreeGitStatusShowClean = 1 " default: 0

" tag bar
nmap <F8> :TagbarToggle<CR>

" jump
nmap <space> <Plug>(easymotion-bd-f)

"theme
colorscheme PaperColor

" airline
"let g:airline_statusline_ontop=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme='nord'
"" buffer
nnoremap <Leader>[ :bprevious<CR>
nnoremap <Leader>] :bnext<CR>
nnoremap <Leader>w :bd<CR>

" coc config
source ~/.vim/CocConfig/config.vim

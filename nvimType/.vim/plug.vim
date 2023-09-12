call plug#begin()
Plug 'sainnhe/everforest'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'mhinz/vim-startify'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'ThePrimeagen/refactoring.nvim'
Plug 'f-person/git-blame.nvim'
Plug 'zivyangll/git-blame.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'NeogitOrg/neogit'
Plug 'github/copilot.vim'
Plug 'sindrets/diffview.nvim'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'nvim-tree/nvim-tree.lua'
"Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }|
"			\ Plug 'Xuyuanp/nerdtree-git-plugin' |
"            \ Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight.git'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'NLKNguyen/papercolor-theme'
Plug 'nikolvs/vim-sunbather'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-projectionist'
" 查找文件和搜索的工具, use apt, brew or winget install the_silver_searcher also
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
" go lang
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'frazrepo/vim-rainbow'
Plug 'lfv89/vim-interestingwords'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'
if has('nvim')
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'gelguy/wilder.nvim'

  " To use Python remote plugin features in Vim, can be skipped
"  Plug 'roxma/nvim-yarp'
  Plug 'https://github.com/charlespascoe/vim-go-syntax'
endif

"" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
filetype indent off   " Disable file-type-specific indentation

"NERD
"let NERDTreeShowHidden=1
"nmap <Leader>r :NERDTreeRefreshRoot <CR>
"nmap <Leader>f :NERDTreeFind<CR>
"nmap <Leader>F :NERDTreeToggle <CR>
"let NERDTreeChDirMode = 2
"autocmd VimEnter * NERDTree

source ~/.config/nvim/.vim/Nvim-Tree-Config/config.lua
nnoremap <Leader>F :NvimTreeToggle<CR>
nnoremap <Leader>f :NvimTreeFindFile<CR>
nnoremap <Leader>r :NvimTreeRefresh<CR>


"default: git (auto find in path)
let g:NERDTreeGitStatusGitBinPath = '/usr/bin/git' 
let g:NERDTreeGitStatusShowClean = 1 " default: 0

" tag bar
nmap <F8> :TagbarToggle<CR>

" jump
nmap <space> <Plug>(easymotion-bd-f)

"theme
"colorscheme sunbathe
syntax on 
set background=dark
colorscheme everforest 



" airline
"let g:airline_statusline_ontop=1
let g:airline_theme='everforest'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
"" buffer
nnoremap <Leader>[ :bprevious<CR>
nnoremap <Leader>] :bnext<CR>
nnoremap <Leader>w :bd<CR>

" coc config
source ~/.config/nvim/.vim/CocConfig/config.vim

"rainbow
let g:rainbow_active = 1
au VimEnter * RainbowLoad

" height words
nnoremap  <leader>k :call InterestingWords('n')<cr>
vnoremap  <leader>k :call InterestingWords('v')<cr>
nnoremap  <leader>K :call UncolorAllWords()<cr>

"move lines
let g:move_key_modifier = 'S'
let g:move_key_modifier_visualmode = 'S'


"wilder  Default keys
call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<Tab>',
      \ 'previous_key': '<S-Tab>',
      \ 'accept_key': '<Down>',
      \ 'reject_key': '<Up>',
	  \})
"NeoGit
source ~/.config/nvim/.vim/NeoGitConfig/config.lua
" Git blamer
nnoremap <Leader>g :<C-u>call gitblame#echo()<CR>

"Refactor
source ~/.config/nvim/.vim/RefactorConfig/config.lua
source ~/.config/nvim/.vim/PlenaryConfig/plenary.lua

"Treesitter
au VimEnter * TSEnable  highlight
au VimEnter * TSEnable  indent
au VimEnter * TSEnable  incremental_selection
" web icon
source ~/.config/nvim/.vim/DevIconsConfig/config.lua
" wilder
source ~/.config/nvim/.vim/WilderConfig/config.vim
" Telescope
nnoremap <leader>ff :Telescope find_files <CR>
nnoremap <leader>fw :Telescope live_grep <CR>
source ~/.config/nvim/.vim/TelescopeConfig/config.lua

"vim-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

call plug#begin()

" Plug
Plug 'sindrets/diffview.nvim'
" startify
Plug 'mhinz/vim-startify'
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
Plug 'nikolvs/vim-sunbather'
Plug 'kyoz/purify', { 'rtp': 'vim' }
" airline
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
" coc 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" syntax  highlighting 
"Plug 'sheerun/vim-polyglot'
" Project Manager
Plug 'tpope/vim-projectionist'
" 查找文件和搜索的工具
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" go lang
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
" rainbow 
Plug 'frazrepo/vim-rainbow'
" highlight words
Plug 'lfv89/vim-interestingwords'
"auto pair
Plug 'jiangmiao/auto-pairs'
" line move
Plug 'matze/vim-move'
" suggetion command in vim
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
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'https://github.com/charlespascoe/vim-go-syntax'
endif

" onedark theme
Plug 'https://github.com/joshdick/onedark.vim.git'
"" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
filetype indent off   " Disable file-type-specific indentation

"NERD
let NERDTreeShowHidden=1
nmap <Leader>r :NERDTreeRefreshRoot <CR>
nmap <Leader>f :NERDTreeFind<CR>
nmap <Leader>F :NERDTreeToggle <CR>
let NERDTreeChDirMode = 2
" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree
" default: git (auto find in path)
let g:NERDTreeGitStatusGitBinPath = '/usr/bin/git' 
let g:NERDTreeGitStatusShowClean = 1 " default: 0

" tag bar
nmap <F8> :TagbarToggle<CR>

" jump
nmap <space> <Plug>(easymotion-bd-f)

"theme
"colorscheme sunbathe
syntax on 
colorscheme onedark 



" airline
"let g:airline_statusline_ontop=1
let g:airline_theme='purify'
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

" vim-go
let g:go_gopls_enabled = 0



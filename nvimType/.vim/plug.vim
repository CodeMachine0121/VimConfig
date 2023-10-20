call plug#begin()
Plug 'rose-pine/neovim'

"Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

" UI or Theme
Plug 'nvim-tree/nvim-web-devicons'
Plug 'mhinz/vim-startify'
Plug 'NLKNguyen/papercolor-theme'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-airline/vim-airline'
Plug 'nikolvs/vim-sunbather'
Plug 'sainnhe/everforest'
Plug 'kyoz/purify', { 'rtp': 'vim' }

" git status
Plug 'kdheepak/lazygit.nvim'
Plug 'f-person/git-blame.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Code Complete or Code Style
Plug 'github/copilot.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'junegunn/vim-easy-align'
Plug 'jiangmiao/auto-pairs'

" Files Operations
Plug 'nvim-tree/nvim-tree.lua'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

" Move
Plug 'easymotion/vim-easymotion'

" Program Language
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'hexdigest/gounit-vim'
Plug 'preservim/vim-markdown'
Plug 'darthmall/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" File Format
Plug 'godlygeek/tabular'


" Vim IDE Related
Plug 'Pocco81/auto-save.nvim'
Plug 'leafOfTree/vim-matchtag'
Plug 'majutsushi/tagbar'
if has('nvim')
  function! UpdateRemotePlugins(...)
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'gelguy/wilder.nvim'
  Plug 'https://github.com/charlespascoe/vim-go-syntax'
endif
call plug#end()


filetype indent off
source ~/.config/nvim/.vim/Nvim-Tree-Config/config.lua
nnoremap <Leader>F :NvimTreeToggle<CR>
nnoremap zcf :NvimTreeFindFile<CR>
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

"vim-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" jumps
nnoremap zjf :Jumps<CR>

" highlight
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


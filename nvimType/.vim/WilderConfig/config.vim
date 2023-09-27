" Neovim or Vim with yarp
call wilder#set_option('pipeline', [
      \   wilder#branch(
      \     wilder#cmdline_pipeline({'language': has('nvim') ? 'python3' : 'vim'}),
      \     wilder#python_search_pipeline(),
      \   ),
      \ ])

" The wildmenu renderer is faster than the popupmenu renderer.
" By default no highlighting is applied.

" call wilder#set_option('renderer', wilder#popupmenu_renderer())
call wilder#set_option('renderer', wilder#wildmenu_renderer())


" 'border'            : 'single', 'double', 'rounded' or 'solid'
"                     : can also be a list of 8 characters,
"                     : see :h wilder#popupmenu_palette_theme() for more details
" 'max_height'        : max height of the palette
" 'min_height'        : set to the same as 'max_height' for a fixed height window
" 'prompt_position'   : 'top' or 'bottom' to set the location of the prompt
" 'reverse'           : set to 1 to reverse the order of the list
"                     : use in combination with 'prompt_position'
call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_palette_theme({
      \ 'border': 'rounded',
      \ 'max_height': '75%',
      \ 'min_height': 0,
      \ 'prompt_position': 'top',
      \ 'reverse': 0,
      \ })))


call wilder#set_option('pipeline', [
      \   wilder#branch(
      \     wilder#cmdline_pipeline({
      \       'language': 'python',
      \       'fuzzy': 1,
      \     }),
      \     wilder#python_search_pipeline({
      \       'pattern': wilder#python_fuzzy_pattern(),
      \       'sorter': wilder#python_difflib_sorter(),
      \       'engine': 're',
      \     }),
      \   ),
      \ ])

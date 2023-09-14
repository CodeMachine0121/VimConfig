-- Basic settings
vim.o.mouse = "a"
vim.wo.relativenumber = true
vim.o.encoding = "UTF-8"
vim.wo.wrap = true
vim.wo.linebreak = true

-- Reload config
vim.api.nvim_set_keymap('n', 'zso', ':luafile ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })

-- Edit section
vim.cmd 'syntax enable'
vim.o.showcmd = true
vim.o.autoindent = true
vim.wo.wrap = false
vim.o.incsearch = true
vim.o.cindent = true
vim.o.smartindent = true
vim.wo.cursorline = true
vim.cmd 'syntax enable'
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.smarttab = true
vim.o.number = true
vim.o.laststatus = 2

-- Move section
vim.api.nvim_set_keymap('n', 'hh', '^', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'll', '$', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<C-right>', 'w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<C-left>', 'b', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'zb', '<C-o>', { noremap = true, silent = true })

-- Other settings
vim.o.hidden = true
vim.o.cmdheight = 2
vim.o.updatetime = 300
vim.o.shortmess = vim.o.shortmess .. 'c'

-- Insert section
vim.api.nvim_set_keymap('n', 'z,', 'A,<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'z,', '<Esc>A,', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'z;', 'A;<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'z;', '<Esc>A;', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'z.', 'A.<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'z.', '<Esc>A.', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'S', ':action SurroundWith<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'zrt', '<Esc>hhireturn <Esc>z;', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'zrt', '<Esc>hhireturn <Esc>z;', { noremap = true, silent = true })

-- Clipboard and visual bell
vim.o.clipboard = "unnamedplus"
vim.o.visualbell = true



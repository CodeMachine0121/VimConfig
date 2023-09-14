require("nvim-tree").setup {
}
vim.api.nvim_set_keymap('n', '<leader>F',':NvimTreeToggle<CR>', {noremap=true, silent=true} )
vim.api.nvim_set_keymap('n', '<leader>f', ':NvimTreeFindFile<CR>', {noremap=true, silent=true})


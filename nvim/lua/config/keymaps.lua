-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-- vim.g.mapleader = ','

-- Movement
vim.keymap.set('n', 'H', '^', opts)
vim.keymap.set('n', 'L', '$', opts)
vim.keymap.set('v', 'H', '^', opts)
vim.keymap.set('v', 'L', '$', opts)
vim.keymap.set('o', 'H', '^', opts)
vim.keymap.set('o', 'L', '$', opts)

-- Jump
vim.keymap.set('n', '<A-l>', '<C-]>', opts)
vim.keymap.set('n', '<A-h>', '<C-t>', opts)
vim.keymap.set('n', '<A-k>', '\'\'', opts)
vim.keymap.set('n', '<Leader><A-l>', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)

-- Window Size
vim.keymap.set('n', '<Leader>1', ':resize +1<CR>', opts)
vim.keymap.set('n', '<Leader>2', ':resize -1<CR>', opts)
vim.keymap.set('n', '<Leader>3', ':vertical resize +1<CR>', opts)
vim.keymap.set('n', '<Leader>4', ':vertical resize -1<CR>', opts)

-- Tab Navigation
vim.keymap.set('n', '<Leader>wl', ':tabn<CR>', opts)
vim.keymap.set('n', '<Leader>wh', ':tabp<CR>', opts)

-- Completion
vim.keymap.set('i', '(', '()<Left>', opts)
vim.keymap.set('i', '[', '[]<Left>', opts)
vim.keymap.set('i', '{', '{}<Left>', opts)
vim.keymap.set('i', '\"', '\"\"<Left>', opts)
vim.keymap.set('i', '\'', '\'\'<Left>', opts)

-- Clipboard
vim.keymap.set('v', '<Leader>y', '\"*y', opts)
vim.keymap.set('n', '<Leader>p', '\"*p', opts)
vim.keymap.set('v', '<Leader>p', '\"*p', opts)

-- Other
vim.keymap.set('n', '<Leader>c', ':cd %:p:h<CR>', opts)

-- Plugin --
vim.keymap.set("n", "<Leader>pd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", {noremap=true})
vim.keymap.set("n", "<Leader>pD", "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", {noremap=true})

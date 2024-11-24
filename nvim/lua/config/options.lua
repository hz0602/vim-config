vim.cmd('syntax on')

-- Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

-- Tab
vim.opt.tabstop = 4	-- number of visual spaces per TAB
vim.opt.softtabstop = 4	-- number of spacesin tab when editing
vim.opt.shiftwidth = 4	-- insert 4 spaces on a tab
vim.opt.expandtab = true	-- tabs are spaces, mainly because of python

-- UI config
vim.opt.number = true	-- show absolute number
vim.opt.relativenumber = true
vim.opt.cursorline = false	-- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true 	-- open new vertical split bottom
vim.opt.splitright = true 	-- open new horizontal splits right

vim.opt.termguicolors = true	-- enabl 24-bit RGB color in the TUI
vim.opt.showmode = false	-- we are experienced, wo don't need the "-- INSERT --" mode hint
vim.opt.showcmd = true

-- Searching
vim.opt.hlsearch = true -- do not highlight matches
vim.opt.ignorecase = false -- ignore case in searches by default
vim.opt.smartcase = false -- but make it case sensitive if an uppercase is entered

-- StatusLine
vim.opt.statusline = '%.20F%m%r%h%w    CurrentOfLine: %l/%L'

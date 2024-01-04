-- [[ Setting options ]]
-- See `:help vim.o`


-- [ Appearance ]
vim.wo.number = true
vim.wo.relativenumber = true
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
-- NOTE: Make sure your terminal supports this
vim.o.termguicolors = true


-- [ Behaviour ]
-- Enable mouse mode
vim.o.mouse = 'a'
-- Enable break indent
vim.o.breakindent = true
-- Save undo history
vim.o.undofile = true
-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300
-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'
-- indentation
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.expandtab = true


-- [ Searching ]
-- Set highlight on search
vim.o.hlsearch = false
-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

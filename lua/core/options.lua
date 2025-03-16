-- This contains the default vim options that I prefer.
-- Felt cute, might change later.

-- Tab and indentation settings
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.shiftwidth = 4            -- Indentation width (4 spaces)
vim.opt.tabstop = 4               -- A tab character appears as 4 spaces
vim.opt.softtabstop = 4           -- Insert spaces when pressing Tab
vim.opt.autoindent = true         -- Automatically indent new lines
vim.opt.smartindent = true        -- Enable smart indentation

-- Line numbers and relative line numbers
vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true     -- Show relative line numbers

-- Search settings
vim.opt.ignorecase = true         -- Ignore case in searches
vim.opt.smartcase = true          -- Override ignorecase if search contains uppercase
vim.opt.incsearch = true          -- Incremental search (highlight matches as you type)

-- UI Settings
vim.opt.wrap = false              -- Disable line wrapping
vim.opt.scrolloff = 8             -- Keep 8 lines above/below cursor when scrolling
vim.opt.sidescrolloff = 8         -- Keep 8 columns left/right of cursor when scrolling

-- Backup & Swap files
vim.opt.swapfile = false          -- Disable swap files
vim.opt.backup = false            -- Disable backup files
vim.opt.undofile = true           -- Enable persistent undo

-- Display settings
vim.opt.showmatch = true          -- Highlight matching parenthesis
vim.opt.signcolumn = "yes"        -- Always show the sign column
vim.opt.wrapscan = true           -- Wrap around search results

-- Folding
vim.opt.foldmethod = "indent"     -- Use indentation to define fold levels
vim.opt.foldlevelstart = 99       -- Start with all folds open


-- [[ stuff I understand ]]

-- relative number
vim.opt.number = true
vim.opt.relativenumber = true

-- indentation
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true

-- wrap/scroll off
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "80"

-- searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- backup/swapfile
vim.opt.swapfile = false
vim.opt.backup = false

-- undofile
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true


-- [[ stuff I don't understand ]]

vim.wo.signcolumn = 'yes'
vim.opt.completeopt = 'menuone,noselect'
vim.opt.termguicolors = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

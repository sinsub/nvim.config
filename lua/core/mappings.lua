-- This file contains custom mappings that I prefer.
-- Felt cute, migth change later.

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- keep half-page up/down landing at the center
vim.keymap.set("n", "<C-u>", "<C-u>zz");
vim.keymap.set("n", "<C-d>", "<C-d>zz");

-- keep search landing at the center
vim.keymap.set("n", "n", "nzz");
vim.keymap.set("n", "N", "Nzz");

-- " p" does not overwrite the current paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP");

-- \+ is the clipboard buffer, allows yanking to clipboard
vim.keymap.set("n", "<leader>y", "\"+y");
vim.keymap.set("v", "<leader>y", "\"+y");

-- <C-c> does not work when inserting with mult-line cursors
vim.keymap.set("i", "<C-c>", "<Esc>");

-- window navigation through leader
vim.keymap.set("n", "<leader>h", "<C-w>h");
vim.keymap.set("n", "<leader>j", "<C-w>j");
vim.keymap.set("n", "<leader>k", "<C-w>k");
vim.keymap.set("n", "<leader>l", "<C-w>l");
vim.keymap.set("n", "<leader>r", "<C-w>r");

-- teminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>");

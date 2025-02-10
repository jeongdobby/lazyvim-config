-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = vim.env.SSH_TTY and "unnamedplus" or "unnamedplus"
vim.opt.relativenumber = false -- Relative line numbers
vim.opt.shiftwidth = 4 -- Size of an indent
vim.opt.tabstop = 4 -- Size of an indent
vim.opt.expandtab = false -- Use spaces instead of tabs

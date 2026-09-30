-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = not vim.opt.number

-- Leader Key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Theme
vim.opt.termguicolors = true

-- Tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false

-- Clipboard
vim.opt.clipboard = "unnamedplus"


-- LSP
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

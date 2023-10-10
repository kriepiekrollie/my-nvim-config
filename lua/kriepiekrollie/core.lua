print("Welcome back <3")

vim.opt.encoding = "utf-8"

vim.opt.number = true
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.opt.backspace = [[indent,eol,start]]

vim.cmd([[
    filetype on
    filetype plugin on
    filetype indent on
]])

vim.opt.termguicolors = true
vim.opt.hidden = true

vim.api.nvim_set_keymap("n", "<C-t>", ":tabnew<CR>", { noremap = true })

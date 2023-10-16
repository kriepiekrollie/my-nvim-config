print("Welcome back ❤︎")

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

vim.opt.termguicolors = true
vim.opt.hidden = true

vim.opt.mouse = ""

vim.g.mapleader = ' '
local map = vim.keymap.set
map("n", "<C-t>", ":tabnew<CR>", { noremap = true })
map("n", "m", "<CMD>nohl<CR>", { noremap = true })

SignColumnEnabled = true
  vim.cmd([[set signcolumn=yes]])

function ToggleSignColumn()
  SignColumnEnabled = not SignColumnEnabled
  if SignColumnEnabled then
    vim.cmd([[set signcolumn=yes]])
  else
    vim.cmd([[set signcolumn=no]])
  end
end

map("n", "<leader>sc", ToggleSignColumn, { noremap = true, desc = "Toggle sign column." })

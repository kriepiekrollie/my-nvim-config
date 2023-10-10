return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
  },
  config = function()
    require("toggleterm").setup({
      on_create = function()
        vim.api.nvim_set_keymap("n", "<S-t>", ":ToggleTerm<CR> :startinsert<CR>", { noremap = true })
      end,
      on_exit = function()
        vim.api.nvim_set_keymap("n", "<S-t>", ":ToggleTerm name=myTerm<CR>", { noremap = true })
      end,
      direction = "float",
    })
    vim.api.nvim_set_keymap("n", "<S-t>", ":ToggleTerm name=myTerm<CR>", { noremap = true })
    vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n><CR> :ToggleTerm<CR>", { noremap = true })
  end,
}

return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {},

  config = function()

    local map = vim.keymap.set

    require("toggleterm").setup({

      on_create = function()
        map("n", "<S-t>", "<CMD>ToggleTerm<CR><CMD>startinsert<CR>", { noremap = true })
      end,

      on_exit = function()
        map("n", "<S-t>", "<CMD>ToggleTerm name=Terminal<CR>", { noremap = true })
      end,

      direction = "float",
    })

    map("n", "<S-t>", "<CMD>ToggleTerm name=Terminal<CR>", { noremap = true })
    map("t", "<Esc>", "<C-\\><C-n><CR> <CMD>ToggleTerm<CR>", { noremap = true })

  end,
}

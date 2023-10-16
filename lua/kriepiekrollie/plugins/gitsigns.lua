return {
  "lewis6991/gitsigns.nvim",

  config = function()
    require("gitsigns").setup({})

    local map = vim.keymap.set

    map("n", "<leader>sg", "<CMD>Gitsigns toggle_signs<CR>", { noremap = true, desc = "Gitsigns : Toggle gitsigns" })

  end,
}

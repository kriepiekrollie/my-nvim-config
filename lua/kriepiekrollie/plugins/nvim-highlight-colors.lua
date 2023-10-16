return {
  "brenoprata10/nvim-highlight-colors",

  config = function()
    local colors = require("nvim-highlight-colors")

    colors.setup({
      enabled_named_colors = true,
    })

    local map = vim.keymap.set
    map("n", "<leader>hc", colors.toggle, {
      noremap = true,
      desc = "Toggle Highlighting of Colors.",
    })

  end,
}

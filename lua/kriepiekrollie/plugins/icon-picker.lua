return {
  "ziontee113/icon-picker.nvim",
  dependencies = { "stevearc/dressing.nvim" },

  config = function()
    require("icon-picker").setup({
      disable_legacy_commands = true,
    })

    local map = vim.keymap.set
    map("n", "<Leader>i", "<CMD>IconPickerNormal<CR>", { noremap = true, silent = true, desc = "Open Icon Picker." })
    map("i", "<C-i>", "<CMD>IconPickerInsert<CR>", { noremap = true, silent = true, desc = "Open Icon Picker." })

  end,
}

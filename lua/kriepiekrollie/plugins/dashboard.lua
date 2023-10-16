return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope.nvim",
    "nvim-tree/nvim-tree.lua",
    "MunifTanjim/nui.nvim",
    "MaximilianLloyd/ascii.nvim",
  },

  config = function()
    local ascii = require("ascii")
    require("dashboard").setup({
      theme = "doom",
      config = {
        header = ascii.art.text.neovim.dos_rebel,
        center = {
          {
            icon = "🗎  ",
            icon_hl = "Title",
            desc = "Find File                   ",
            desc_hl = "Title",
            key = "e",
            keymap = "Space ff",
            key_hl = "Number",
            action = "lua require('telescope.builtin').find_files()",
          },
          {
            icon = "🗀  ",
            icon_hl = "Title",
            desc = "Explore Files",
            desc_hl = "Title",
            key = "f",
            keymap = "Shift+Tab",
            key_hl = "Number",
            action = ":NvimTreeToggle<CR>",
          },
          {
            icon = "⮭  ",
            icon_hl = "Title",
            desc = "Update Plugins",
            desc_hl = "Title",
            key = "u",
            key_hl = "Number",
            action = ":Lazy update",
          }
        },
        footer = {},
      },
    })
  end,
}

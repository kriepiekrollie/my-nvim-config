return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.4",
  dependencies = {"nvim-lua/plenary.nvim"},

  config = function()

    require("telescope").setup({
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    })

    local map = vim.keymap.set

    local builtin = require("telescope.builtin")

    map("n", "<leader>ff", builtin.find_files, {
      noremap = true,
      desc = "Telescope: Find Files",
    })

    map("n", "<leader>fg", builtin.live_grep, {
      noremap = true,
      desc = "Telescope: Find Grep",
    })

    map("n", "<leader>fb", builtin.buffers, {
      noremap = true,
      desc = "Telescope: Find Buffers",
    })

    map("n", "<leader>fh", builtin.help_tags, {
      noremap = true,
      desc = "Telescope: Find Help",
    })

    map("n", "<leader>fc", builtin.colorscheme, {
      noremap = true,
      desc = "Telescope: Find Colorschemes",
    })

  end,

}

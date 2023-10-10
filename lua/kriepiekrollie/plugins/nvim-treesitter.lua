return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "c",
        "cpp",
        "python",
        "javascript",
        "css",
        "html",
        "lua",
        "vim",
        "vimdoc"
      },
      sync_install = false,
      auto_install = true,
      highlight = {enable = true},
      indent = {enable = true},
      incremental_selection = {
        enable = true,
        keymaps = {
          node_incremental = "<TAB>",
          node_decremental = "<S-TAB>",
        }
      }
    })
  end,
}

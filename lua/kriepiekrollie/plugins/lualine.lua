return {
	"nvim-lualine/lualine.nvim",
	priority = 999,
  dependencies = {
      "nvim-tree/nvim-web-devicons"
  },
	config = function()
		require("lualine").setup {
			options = {theme = require"lualine.themes.nord"}
		}
	end,
}

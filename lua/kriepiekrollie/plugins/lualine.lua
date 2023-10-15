return {
	"nvim-lualine/lualine.nvim",
	priority = 999,
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
	config = function()
		require("lualine").setup {
      options = {
        theme = "auto", --require("lualine.themes.nord")
        component_separators = {
          left = "/",
          right = "\\"
        },
        section_separators = {
          left = "",
          right = ""
        }
      }
		}
	end,
}

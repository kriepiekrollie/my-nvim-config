return {
  "akinsho/bufferline.nvim", 
  version = "*", 
  dependencies = {"nvim-tree/nvim-web-devicons"},
  config = function()
    require("bufferline").setup({
      options = {
        mode = "tabs",
        themable = true,
        separator_style = "slant",
        numbers = "ordinal",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "left",
            separator = true
          }
        },
        always_show_bufferline = true,
        sort_by = "tabs"
      }
    })
  end,
}

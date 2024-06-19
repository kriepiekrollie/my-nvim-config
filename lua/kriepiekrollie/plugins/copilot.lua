return {
  "github/copilot.vim",
  priority = 999,

  config = function()

    vim.g.copilot_enabled = 0
    local copilot_on = false
    vim.api.nvim_create_user_command("CopilotToggle", function()
      if copilot_on then
        vim.cmd("Copilot disable")
        print("Copilot OFF")
      else
        vim.cmd("Copilot enable")
        print("Copilot ON")
      end
      copilot_on = not copilot_on
    end, { nargs = 0 })

    local map = vim.keymap.set
    map('n', '<leader>kk', '<CMD>CopilotToggle<CR>', { noremap = true, desc = "Toggle Copilot", silent = true })
  end,
}

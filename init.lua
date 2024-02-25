-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.shell = "pwsh.exe"
if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font"
  vim.g.neovide_theme = "auto"
  vim.g.neovide_cursor_animation_length = 0.0
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_scroll_animation_far_lines = 0
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_scale_factor = 0.85
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.25)
  end)
end

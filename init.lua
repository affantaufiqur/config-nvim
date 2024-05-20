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

local function git_branch()
  local file = io.popen("git rev-parse --abbrev-ref HEAD 2>nul")
  if file then
    local branch = file:read("*a")
    file:close()
    if string.len(branch) > 0 then
      return string.gsub(branch, "[\r\n]+$", "")
    end
  end
  return ":"
end

local function statusline()
  local set_color_1 = "%#PmenuSel#"
  local branch = git_branch()
  local set_color_2 = "%#LineNr#"
  local file_name = " %f"
  local modified = "%m"
  local align_right = "%="
  local fileencoding = " %{&fileencoding?&fileencoding:&encoding}"
  local fileformat = " [%{&fileformat}]"
  local filetype = " %y"
  local percentage = " %p%%"
  local linecol = " %l:%c"

  return string.format(
    "%s %s %s%s%s%s%s%s%s%s%s",
    set_color_1,
    branch,
    set_color_2,
    file_name,
    modified,
    align_right,
    filetype,
    fileencoding,
    fileformat,
    percentage,
    linecol
  )
end

vim.opt.statusline = statusline()

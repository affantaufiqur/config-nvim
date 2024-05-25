local function git_branch()
  local os_name = io.popen("uname"):read("*l")
  local file, branch
  if os_name and os_name:lower() == "linux" then
    file = io.popen("git rev-parse --abbrev-ref HEAD 2>/dev/null")
  else -- Assume Windows
    file = io.popen("git rev-parse --abbrev-ref HEAD 2>nul")
  end
  if file then
    branch = file:read("*l")
    file:close()
    if branch and string.len(branch) > 0 then
      return string.gsub(branch, "[\r\n]+$", "")
    end
  end
  return ":"
end

local function git_status()
  local status = {}
  local os_name = io.popen("uname"):read("*l")
  local file
  if os_name and os_name:lower() == "linux" then
    file = io.popen("git status --porcelain 2>/dev/null")
  else -- Assume Windows
    file = io.popen("git status --porcelain 2>nul")
  end
  if file then
    local output = file:read("*a")
    file:close()
    if output then
      for line in output:gmatch("[^\r\n]+") do
        local status_code = line:sub(1, 2)
        if status_code == "??" then
          status.untracked = (status.untracked or 0) + 1
        elseif status_code == " M" or status_code == "M " then
          status.modified = (status.modified or 0) + 1
        elseif status_code == " D" or status_code == "D " then
          status.deleted = (status.deleted or 0) + 1
        end
      end
    end
  end
  return status
end

local function statusline()
  local set_color_1 = "%#DiffDelete#"
  local branch = git_branch()
  local set_color_2 = "%#Hint#"
  local file_name = " %f"
  local modified = "%m"
  local align_right = "%="
  local fileencoding = " %{&fileencoding?&fileencoding:&encoding}"
  local filetype = " %y"
  local percentage = " %p%%"
  local linecol = " %l:%c"
  local git_status_components = {}

  local status = git_status()
  if status.untracked then
    table.insert(git_status_components, "[?]" .. status.untracked)
  end
  if status.modified then
    table.insert(git_status_components, "[M]" .. status.modified)
  end
  if status.deleted then
    table.insert(git_status_components, "[D]" .. status.deleted)
  end

  local git_status_str = table.concat(git_status_components, " ")

  return string.format(
    "%s %s %s%s%s%s%s%s%s%s%s",
    set_color_1,
    branch,
    set_color_2,
    git_status_str,
    file_name,
    modified,
    align_right,
    filetype,
    fileencoding,
    percentage,
    linecol
  )
end

vim.opt.statusline = statusline()

vim.api.nvim_create_user_command("UpdateStatusline", function()
  vim.opt.statusline = statusline()
end, {})

vim.api.nvim_set_keymap("n", "<leader>gr", ":UpdateStatusline<CR>", { noremap = true, silent = true })

local statusline_group = vim.api.nvim_create_augroup("Statusline", { clear = true })
vim.api.nvim_create_autocmd({ "BufEnter", "VimEnter", "DirChanged" }, {
  group = statusline_group,
  callback = function()
    vim.opt.statusline = statusline()
  end,
})

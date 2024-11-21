vim.api.nvim_create_autocmd({ "VimEnter", "SessionLoadPost" }, {
  callback = function()
    vim.cmd("ShowkeysToggle")
  end,
})

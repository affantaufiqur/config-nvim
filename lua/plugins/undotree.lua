return {
  "mbbill/undotree",
  config = function()
    vim.keymap.set("n", "<leader>t", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })
  end,
}

return {
  "vuki656/package-info.nvim",
  config = function()
    require("package-info").setup()
    vim.api.nvim_set_keymap(
      "n",
      "<leader>ns",
      "<cmd>lua require('package-info').show()<cr>",
      { silent = true, noremap = true }
    )
  end,
}

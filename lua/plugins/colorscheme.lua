return {
  "EdenEast/nightfox.nvim",
  event = "VimEnter",
  priority = 1000,
  config = function()
    require("nightfox").setup({})
    vim.cmd([[colorscheme carbonfox]])
  end,
}

return {
  "EdenEast/nightfox.nvim",
  event = "VimEnter",
  priority = 1000,
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true,
      },
    })
    vim.cmd([[colorscheme carbonfox]])
  end,
}

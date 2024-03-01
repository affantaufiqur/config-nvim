return {
  "polirritmico/monokai-nightasty.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("monokai-nightasty").setup({
      dark_style_background = "transparent",
    })
    vim.opt.background = "dark"
    vim.cmd([[colorscheme monokai-nightasty]])
  end,
}

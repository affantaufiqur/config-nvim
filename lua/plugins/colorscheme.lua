return {
  {
    "armannikoyan/rusty",
    lazy = false,
    priority = 1000,
    config = function()
      require("rusty").setup({
        transparent = true,
      })
      vim.cmd([[colorscheme rusty]])
    end,
  },
  {
    "Lazyvim/LazyVim",
    opts = {
      colorscheme = "rusty",
    },
  },
}

return {
  {
    "0xstepit/flow.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      require("flow").setup({
        transparent = true,
        fluo_color = "pink",
      })
      vim.cmd([[colorscheme flow]])
    end,
  },
  {
    "Lazyvim/LazyVim",
    opts = {
      colorscheme = "flow",
    },
  },
}

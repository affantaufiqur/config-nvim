return {
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      local lackluster = require("lackluster")
      lackluster.setup({
        tweak_syntax = {
          comment = lackluster.color.orange,
        },
        tweak_background = {
          normal = "none",
          telescope = "none",
          menu = lackluster.color.gray3,
          popup = "default",
        },
      })
      vim.cmd.colorscheme("lackluster-hack")
    end,
  },
  {
    "Lazyvim/LazyVim",
    opts = {
      colorscheme = "lackluster-hack",
    },
  },
}

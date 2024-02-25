return {
  "crispybaccoon/evergarden",
  lazy = false,
  priority = 1000,
  opts = {
    transparent_background = true,
    contrast_dark = "hard", -- 'hard'|'medium'|'soft'
  },
  config = function(_, opts)
    require("evergarden").setup(opts)
    vim.cmd([[colorscheme evergarden]])
  end,
}

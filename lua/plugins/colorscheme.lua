return {
  "olivercederborg/poimandres.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("poimandres").setup({
      -- leave this setup function empty for default config
      -- or refer to the configuration section
      -- for configuration options
      --
      disable_background = true,
    })
    vim.cmd([[colorscheme poimandres]])
  end,

  -- optionally set the colorscheme within lazy config
}

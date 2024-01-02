return {
  {
    "aktersnurra/no-clown-fiesta.nvim",
    config = function()
      require("no-clown-fiesta")
      vim.cmd([[colorscheme no-clown-fiesta]])
    end,
  },
  {
    "DanielEliasib/sweet-fusion",
    name = "sweet-fusion",
    priority = 1000,
    opts = {
      -- Set transparent background
      transparency = true,
      dim_inactive = true,
    },
    config = function()
      vim.cmd([[colorscheme sweet-fusion]])
    end,
  },
  {
    "ramojus/mellifluous.nvim",
    config = function()
      require("mellifluous").setup({
        dim_inactive = false,
        color_set = "tender",
        styles = {
          transparent_background = {
            enabled = true,
            floating_windows = true,
            telescope = true,
            file_tree = true,
            cursor_line = true,
            status_line = false,
          },
        },
        plugins = {
          cmp = true,
          indent_blankline = true,
          neo_tree = {
            enabled = true,
          },
          telescope = {
            enabled = true,
            nvchad_like = true,
          },
        },
      }) -- optional, see configuration section.
      vim.cmd("colorscheme mellifluous")
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = true,
      })
      vim.cmd("colorscheme cyberdream")
    end,
  },
}

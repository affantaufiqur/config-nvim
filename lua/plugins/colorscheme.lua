return {
  "ramojus/mellifluous.nvim",
  config = function()
    require("mellifluous").setup({
      dim_inactive = false,
      color_set = "tender",
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
}

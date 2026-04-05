return {
  "Bekaboo/dropbar.nvim",
  dependencies = {
    "dmtrKovalenko/fff.nvim",
  },
  opts = {
    icons = {
      enable = true,
    },
    sources = {
      treesitter = {
        max_depth = 1,
      },
      lsp = {
        max_depth = 1,
      },
    },
  },
}

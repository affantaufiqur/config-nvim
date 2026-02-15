return {
  "Bekaboo/dropbar.nvim",
  dependencies = {
    "vigoux/fff.nvim",
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

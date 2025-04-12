return {
  "Bekaboo/dropbar.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
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

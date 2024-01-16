return {
  {
    -- auto buffers closer
    "chrisgrieser/nvim-early-retirement",
    config = true,
    event = "VeryLazy",
    defaultOpts = {
      retirementAgeMins = 3,
      deleteBufferWhenFileDeleted = true,
    },
  },
  {
    -- splitting and joining syntax
    "Wansmer/treesj",
    keys = { "<space>m" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({})
    end,
  },
  { "tpope/vim-fugitive" },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}

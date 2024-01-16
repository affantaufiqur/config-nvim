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
    -- splitting and joing syntax
    "Wansmer/treesj",
    keys = { "<space>m", "<space>j", "<space>s" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({})
    end,
  },
}

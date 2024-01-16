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
}

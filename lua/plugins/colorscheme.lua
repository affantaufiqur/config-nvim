return {
  {
    "yorickpeterse/nvim-grey",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme grey]])
    end,
  },
}

return {
  {
    "affantaufiqur/mana",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme mana]])
    end,
  },
  {
    "Lazyvim/LazyVim",
    opts = {
      colorscheme = "mana",
    },
  },
}

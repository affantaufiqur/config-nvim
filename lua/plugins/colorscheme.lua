return {
  -- "aktersnurra/no-clown-fiesta.nvim",
  -- config = function()
  --   require("no-clown-fiesta")
  --   vim.cmd([[colorscheme no-clown-fiesta]])
  -- end,
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
}

return {
  "chikko80/error-lens.nvim",
  event = "BufRead",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    enabled = true,
    auto_adjust = {
      enabled = true,
    },
    prefix = 4,
    colors = {
      error_fg = "#FF6363", -- diagnostic font color
      error_bg = "#4B252C", -- diagnostic line color
      warn_fg = "#FA973A",
      warn_bg = "#403733",
      info_fg = "#5B38E8",
      info_bg = "#281478",
      hint_fg = "#25E64B",
      hint_bg = "#403733",
    },
  },
}

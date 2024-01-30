local Util = require("lazyvim.util")

return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = false,
      component_separators = "|",
      section_separators = "::",
    },
    sections = {
      lualine_x = {
        {
          Util.lualine.pretty_path(),
        },
      },
      lualine_a = {
        {
          "mode",
        },
      },
      lualine_b = {
        {
          "filename",
        },
      },
      lualine_c = {
        {
          "diagnostics",
          symbols = {
            error = "E ",
            warn = "W ",
            info = "I ",
            hint = "H ",
          },
        },
        {
          "branch",
          icons_enabled = true,
          icon = "🗲",
        },
      },
    },
  },
}

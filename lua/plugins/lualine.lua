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
          "branch",
          icons_enabled = true,
          icon = "",
        },
      },
      lualine_c = {
        {
          "filename",
        },
        {
          "diagnostics",
          symbols = {
            error = "E ",
            warn = "W",
            info = "I ",
            hint = "H ",
          },
        },
      },
    },
  },
}

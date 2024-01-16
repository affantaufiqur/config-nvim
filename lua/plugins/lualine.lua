return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = false,
      component_separators = "|",
      section_separators = "",
    },
    sections = {
      lualine_x = {
        {
          "%=%m %f",
        },
      },
      lualine_a = {
        {
          "mode",
        },
      },
      lualine_b = {
        {
          "buffers",
          symbols = {
            alternate_file = "",
          },
        },
      },
      lualine_c = {
        {
          "diagnostics",
          symbols = {
            error = " ",
            warn = " ",
            info = " ",
            hint = " ",
          },
        },
        {
          "branch",
          icons_enabled = true,
          icon = "",
        },
      },
    },
  },
}

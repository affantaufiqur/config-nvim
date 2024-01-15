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
          "branch",
          icons_enabled = false,
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
    },
  },
}

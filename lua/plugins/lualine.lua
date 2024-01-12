return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = true,
      component_separators = "|",
      section_separators = "",
    },
    sections = {
      lualine_x = {
        {
          "branch",
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
        },
      },
    },
  },
}

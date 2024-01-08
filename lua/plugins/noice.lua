return {
  "folke/noice.nvim",
  config = function()
    require("noice").setup({
      routes = {
        filter = {
          event = "notify",
          find = "No information available",
        },
      },
      presets = {
        lsp_doc_border = true,
      },
      cmdline = {
        enabled = true,
        view = "cmdline",
      },
    })
  end,
}

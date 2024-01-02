return {
  "jinh0/eyeliner.nvim",
  config = function()
    require("eyeliner").setup({
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          vim.api.nvim_set_hl(0, "EyelinerPrimary", { underline = true })
        end,
      }),
    })
  end,
}

return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier", stop_after_first = true },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      typescript = { "prettier" },
      svelte = { "prettier", stop_after_first = true },
      astro = { "prettier", stop_after_first = true },
    },
  },
}

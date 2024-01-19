return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      typescript = { "prettier" },
      svelte = { "prettier" },
    },
  },
}

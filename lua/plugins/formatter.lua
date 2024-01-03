return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettierd", "prettier", "eslint" },
      javascriptreact = { "prettierd", "prettier", "eslint" },
      typescriptreact = { "prettierd", "prettier", "eslint" },
      typescript = { "prettierd", "prettier", "eslint" },
      svelte = { "prettierd", "prettier", "eslint" },
    },
  },
}

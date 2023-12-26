return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettierd", "eslint" },
      javascriptreact = { "prettierd", "eslint" },
      typescriptreact = { "prettierd", "eslint" },
      typescript = { "prettierd", "eslint" },
      svelte = { "prettierd", "eslint" },
    },
  },
}

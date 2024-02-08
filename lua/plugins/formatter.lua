return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- prettierd sometimes fails to format, so can use normal prettier instead
      lua = { "stylua" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      typescript = { "prettier" },
      svelte = { "prettierd", "prettier" },
    },
  },
}

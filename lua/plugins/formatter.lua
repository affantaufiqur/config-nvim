return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- prettierd sometimes fails to format, so can use normal prettier instead
      lua = { "stylua" },
      javascript = { "prettierd", "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettierd" },
      typescript = { "prettierd" },
      svelte = { "prettierd", "prettier" },
    },
  },
}

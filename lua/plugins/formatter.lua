return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      typescript = { "prettier" },
      svelte = function()
        local cwd = vim.fn.getcwd()
        if cwd:match("bv") then
          return {}
        else
          return { "prettier" }
        end
      end,
    },
  },
}

return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
  },
  setup = {
    denols = {
      root_dir = function()
        return require("lspconfig").util.root_pattern("deno.json", "deno.jsonc", "deno.json5")()
      end
    }
  }
}

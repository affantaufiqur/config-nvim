return {
  "saghen/blink.cmp",
  opts = {
    fuzzy = { implementation = "prefer_rust_with_warning" },
    keymap = {
      preset = "enter",
      ["<S-CR>"] = { "select_and_accept" },
    },
  },
}

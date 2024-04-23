return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "current",
    },
    filesystem = {
      use_libuv_file_watcher = false,
      follow_current_file = {
        enabled = true,
      },
    },
  },
}

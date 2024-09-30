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
        leave_dirs_open = true,
      },
      filtered_items = {
        always_show = { ".env", ".prettierrc", ".github" },
        always_show_by_pattern = { ".env", ".prettier" },
      },
    },
    buffers = {
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true,
      },
    },
  },
}

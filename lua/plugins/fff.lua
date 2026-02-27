return {
  "dmtrKovalenko/fff.nvim",
  build = function()
    require("fff.download").download_or_build_binary()
  end,
  opts = {
    debug = {
      enabled = true,
      show_scores = true,
    },
  },
  lazy = false,
  keys = {
    {
      "<leader>sf",
      function()
        require("fff").find_files()
      end,
      desc = "[S]earch [F]iles",
    },
    {
      "<leader>sB",
      function()
        require("fff").buffers()
      end,
      desc = "[s] Find existing [B]uffers",
    },
    {
      "<leader>fp",
      function()
        require("fff").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
    {
      "<leader><space>",
      function()
        require("fff").find_in_git_root()
      end,
      desc = "Find files in git root",
    },
  },
}

return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<C-a>",
            next = "<C-j>",
          },
        },
      })
    end,
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "zbirenbaum/copilot.lua",
    },
    config = function()
      require("avante").setup({
        provider = "copilot",
        auto_suggestions_provider = "claude",
        copilot = {
          model = "claude-3.7-sonnet",
          temperature = 0.1,
        },
      })
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",

    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      model = "claude-3.7-sonnet",
      prompts = {
        gilfoyle = {
          system_prompt = "You are Gilfoyle, elite systems architect. "
            .. "(1) Identify code flaws precisely, "
            .. "(2) Use deadpan sarcasm, "
            .. "(3) Propose superior solutions, "
            .. "(4) Be concise and cutting, "
            .. "(5) Reference security and distributed systems, "
            .. "(6) Show contempt for inefficiency, "
            .. "(7) Mention Satanism occasionally, "
            .. "(8) Never apologize, "
            .. "(9) Technical excellence > feelings, "
            .. "(10) End with cutting insight. "
            .. "You exist to enlighten amateurs who write garbage code.",
        },
        ui_engineer = {
          system_prompt = "You are an elite UI/UX engineer with design obsession. "
            .. "(1) Spot usability and accessibility issues, "
            .. "(2) Flag inconsistent visual hierarchies, "
            .. "(3) Propose user-centered redesigns, "
            .. "(4) Reference design standards, "
            .. "(5) Zero tolerance for poor contrast/spacing, "
            .. "(6) Express pain at misalignments, "
            .. "(7) 'Step away' from terrible designs, "
            .. "(8) Users come first, always, "
            .. "(9) Speak in pixels and user journeys, "
            .. "(10) End with design wisdom. "
            .. "Use Tailwind CSS; standard CSS only when necessary.",
        },
      },
      mappings = {
        reset = {
          normal = "<leader>cpr",
          insert = "<leader>cpr",
        },
      },
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}

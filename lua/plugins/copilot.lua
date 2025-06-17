return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<Tab>",
            next = "<C-j>",
          },
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
      model = "claude-sonnet-4",
      prompts = {
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
    config = function(_, opts)
      require("CopilotChat").setup(opts)
      -- Your royal keymap
      vim.keymap.set(
        "n",
        "<leader>cpo",
        ":CopilotChatOpen<CR>",
        { noremap = true, silent = true, desc = "Open copilot chat window" }
      )
    end,
  },
}

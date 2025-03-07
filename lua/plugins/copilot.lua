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
    "CopilotC-Nvim/CopilotChat.nvim",

    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      model = "claude-3.7-sonnet",
      prompts = {
        cracked = {
          system_prompt = "You are a cracked senior L7 engineer at the largest tech company in the world, nobody has ever seen your code, but you are the best at what you do. You are the only one who can fix the bug in the system. You are the only one who can save the company. You are the only one who can save the world. You write code like nobody else has ever think of, very precise, bugs are not in your vocabulary. You explain your solutions to other like they are 5.",
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

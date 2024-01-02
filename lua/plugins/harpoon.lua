return {
  "ThePrimeagen/harpoon",
  dependencies = { "nvim-lua/plenary.nvim" },
  branch = "harpoon2",
  config = function()
    local harpoon = require("harpoon").setup()

    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():append()
    end)
    vim.keymap.set("n", "<leader>h", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set("n", "<leader>ho", function()
      harpoon:list():select(1)
    end)
    vim.keymap.set("n", "<leader>ht", function()
      harpoon:list():select(2)
    end)
    vim.keymap.set("n", "<leader>hk", function()
      harpoon:list():select(3)
    end)
    vim.keymap.set("n", "<leader>hf", function()
      harpoon:list():select(4)
    end)

    vim.keymap.set("n", "<leader>hp", function()
      harpoon:list():prev()
    end)
    vim.keymap.set("n", "<leader>hn", function()
      harpoon:list():next()
    end)
  end,
}

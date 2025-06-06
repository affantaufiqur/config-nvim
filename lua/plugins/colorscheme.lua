return {
    {
        "affantaufiqur/mana",
        lazy = false,
        priority = 1000,
        config = function()
            require("mana").setup({
                transparent = true,
            })
            vim.cmd([[colorscheme mana]])
        end,
    },
}

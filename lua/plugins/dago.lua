return {
    dir = "~/code/dago",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        remote_sync = {
            enabled = true,
            url = vim.env.DAGO_ENDPOINT, -- The endpoint URL to send data to
            batch_size = 10,             -- How many records to send at once
            interval_seconds = 30,       -- How often to attempt sending (e.g., 5 mins)
        },
    },
    config = function(_, opts)
        require("dago").setup(opts)
    end,
}

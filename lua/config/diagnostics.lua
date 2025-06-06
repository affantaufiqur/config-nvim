vim.diagnostic.config({
    virtual_text = {
        enabled = true,
        source = "if_many",
        prefix = "●",
        spacing = 4,
    },
    signs = {
        active = true,
        values = {
            { name = "DiagnosticSignError", text = "E" },
            { name = "DiagnosticSignWarn",  text = "W" },
            { name = "DiagnosticSignHint",  text = "H" },
            { name = "DiagnosticSignInfo",  text = "" },
        },
    },
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = {
        focusable = true,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})

for _, sign in ipairs(vim.diagnostic.config().signs.values) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = '[C]ode [D]iagnostics' })

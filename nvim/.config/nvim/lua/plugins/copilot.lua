return {
    "zbirenbaum/copilot.lua",
    opts = {
        suggestion = {
            enabled = false,
        },
        panel = {
            enabled = false,
        },
    },
    keys = {
        {
            "<leader>ae",
            "<cmd>Copilot enable<cr>",
            mode = { "n", "v" },
            desc = "Enable Copilot",
        },
        {
            "<leader>ad",
            "<cmd>Copilot disable<cr>",
            mode = { "n", "v" },
            desc = "Disable Copilot",
        },
    },
}

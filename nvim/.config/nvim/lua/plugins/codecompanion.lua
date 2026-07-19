return {
    "olimorris/codecompanion.nvim",
    version = "^19.0.0",
    opts = {
        strategies = {
            chat = {
                adapter = "copilot",
            },
            inline = {
                adapter = "copilot",
            },
        },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    keys = {
        {
            "<leader>aa",
            "<cmd>CodeCompanionActions<cr>",
            mode = { "n", "v" },
            desc = "AI actions",
        },
        {
            "<leader>ac",
            "<cmd>CodeCompanionChat Add<cr>",
            mode = { "n", "v" },
            desc = "AI chat",
        },
    },
}

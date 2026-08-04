return {
    -- LSP: Roslyn únicamente
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                roslyn = {
                    enabled = true,
                },

                omnisharp = {
                    enabled = false,
                },
            },
        },
    },

    -- Herramientas instaladas por Mason
    {
        "mason-org/mason.nvim",
        opts = {
            ensure_installed = {
                "netcoredbg",
            },
        },
    },

    -- Formateo
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                cs = { "csharpier" },
            },
        },
    },

    -- Treesitter C#
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "c_sharp",
            },
        },
    },

    -- Easy .NET
    {
        "GustavEikaas/easy-dotnet.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "folke/snacks.nvim" },
        config = function()
            require("easy-dotnet").setup()
        end,
    },
}

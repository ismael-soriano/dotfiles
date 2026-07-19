return {
    "nvim-neotest/neotest",
    dependencies = {
        "Issafalcon/neotest-dotnet",
        "nvim-neotest/nvim-nio",
    },
    opts = function(_, opts)
        opts.adapters = opts.adapters or {}

        table.insert(
            opts.adapters,
            require("neotest-dotnet")({
                dap = { justMyCode = false },
            })
        )

        return opts
    end,
}

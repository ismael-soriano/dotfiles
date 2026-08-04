-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Safely paste" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy line to system clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Safely delete" })

-- Debugging keymaps
local dap = require("dap")

vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debug Continue" })
vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Debug Step Over" })
vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Debug Step Into" })
vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Debug Step Out" })
vim.keymap.set("n", "<S-F5>", dap.terminate, { desc = "Debug Terminate" })

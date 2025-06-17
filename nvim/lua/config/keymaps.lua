-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", ";", ":", { noremap = true, silent = false })
vim.keymap.set("n", ":", ";", { noremap = true, silent = false })
vim.keymap.set("v", ";", ":", { noremap = true, silent = false })
vim.keymap.set("v", ":", ";", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>d", ":Dashboard<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "gt", "<Cmd>tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "gT", "<Cmd>tabprevious<CR>", { desc = "Previous tab" })

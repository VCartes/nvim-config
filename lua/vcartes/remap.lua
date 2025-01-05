local util = require("vcartes.util")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<leader>o", util.newLine)
vim.keymap.set("n", "<leader>O", util.newLineBefore)

local util = require("vcartes.util")


local latexModule = {}

latexModule.compiler = util.latexcompiler

latexModule.pdf = function()
    local filePath = vim.api.nvim_buf_get_name(0)

    vim.cmd("write")
    print("!" .. latexModule.compiler .. " " .. filePath)
    vim.api.nvim_command("!" .. latexModule.compiler .. " \"" .. filePath .. "\"")
end

return latexModule

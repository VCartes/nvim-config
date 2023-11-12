local utilModule = {}

utilModule.newLine = function()
    local cursor = vim.api.nvim_win_get_cursor(0)[1]
    vim.api.nvim_buf_set_lines(0, cursor, cursor, false, {""})
end

utilModule.newLineBefore = function()
    local cursor = vim.api.nvim_win_get_cursor(0)[1]
    vim.api.nvim_buf_set_lines(0, cursor - 1, cursor - 1, false, {""})
end

return utilModule

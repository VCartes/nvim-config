local ok, overrides = pcall(require, "local.localoverrides")
if not ok then
	vim.notify("[WARNING] No local/localoverrides.lua file", vim.log.levels.WARN)
end



local util = {}

util.newLine = function()
    local cursor = vim.api.nvim_win_get_cursor(0)[1]
    vim.api.nvim_buf_set_lines(0, cursor, cursor, false, {""})
end

util.newLineBefore = function()
    local cursor = vim.api.nvim_win_get_cursor(0)[1]
    vim.api.nvim_buf_set_lines(0, cursor - 1, cursor - 1, false, {""})
end

util.latexcompiler = overrides.latexcompiler

return util

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
    'clangd',
    'pyright',
    'lua_ls',
    'texlab'
})

local lspcfg = require('lspconfig')

-- (Optional) Configure lua language server for neovim
lspcfg.lua_ls.setup(lsp.nvim_lua_ls())

lspcfg.clangd.setup({
    cmd = {'clangd', '--query-driver=C:\\mingw64\\bin\\gcc.exe'}
})

lsp.setup()

local cmp = require('cmp')

cmp.setup({
    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item()
    }
})

-- Lsp config
local servers = { 'clangd', 'denols', 'html', 'cssls', 'tailwindcss', 'eslint', 'jsonls', 'intelephense', 'bashls' }
for _, lsp in ipairs(servers) do
    require'lspconfig'[lsp].setup {
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }
end

-- Completion
local cmp = require'cmp'
cmp.setup({
    completion = {
        completeopt = 'menu,menuone,noinsert',
    },
    snippet = {
       expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
        { name = 'buffer' },
    }
})
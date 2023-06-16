local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({

	"eslint",
	"lua_ls",
	"rust_analyzer",

})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
require('lspconfig').rust_analyzer.setup({})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})
lsp.setup()

require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer" },
}

local lsp_attach = function(client, bufnr)

end 



require'cmp'.setup {
	sources = {
		{ name = 'nvim_lsp' }
	}
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
	function(server_name)
		lspconfig[server_name].setup({
			on_attach = lsp_attach,
			capabilities = capabilities
		})
	end,
})



require("mason-lspconfig").setup({
	ensure_installed = { "rust_analyzer" }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.rust_analyzer.setup{
	capabilities = capabilities,
	settings = {
		['rust-analyzer'] = {
			diagnostics = {
				enable = true;
			}
		}
	}
}

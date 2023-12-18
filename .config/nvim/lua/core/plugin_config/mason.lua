require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "pylsp" }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").pylsp.setup {
	capabilities = capabilities
}

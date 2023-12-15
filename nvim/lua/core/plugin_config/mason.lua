require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "pyright" }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").pyright.setup {
	capabilities = capabilities
}

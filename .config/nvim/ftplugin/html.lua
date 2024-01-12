require("mason-lspconfig").setup({
	ensure_installed = { 'html', 'tsserver' }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

lspconfig.html.setup { capabilities = capabilities }
lspconfig.tsserver.setup { capabilities = capabilities }

vim.cmd [[LspStart tsserver]]

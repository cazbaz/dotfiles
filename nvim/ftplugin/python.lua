require("mason-lspconfig").setup({
	ensure_installed = { "pylsp" }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.pylsp.setup { capabilities = capabilities }

print("ftplugin/python.lua loaded")

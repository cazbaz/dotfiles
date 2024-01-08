require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.mouse = a
vim.opt.clipboard = unnamedplus
vim.opt.scrolloff = 999

-- Theme configuration
vim.o.termguicolors = true
vim.cmd.colorscheme 'base16-gruvbox-dark-hard'
vim.cmd.highlight 'TelescopeBorder guifg=#ffffff'
vim.cmd.highlight 'TelescopePromptBorder guifg=#ffffff'
vim.cmd.highlight 'TelescopeResultsBorder guifg=#ffffff'
vim.cmd.highlight 'TelescopePreviewBorder guifg=#ffffff'
vim.cmd.highlight 'TelescopePreviewTitle guifg=#ffffff guibg=#1a1c1d'
vim.cmd.highlight 'TelescopePromptTitle guifg=#ffffff guibg=#1a1c1d'
vim.cmd.highlight 'TelescopePromptNormal guibg=#1a1c1d'
vim.cmd.highlight 'TelescopePromptPrefix guibg=#1a1c1d'
vim.cmd.highlight 'TelescopePromptBorder guibg=#1a1c1d'
vim.cmd.highlight 'TelescopeResultsTitle guifg=#ffffff'

print('init.lua loaded')

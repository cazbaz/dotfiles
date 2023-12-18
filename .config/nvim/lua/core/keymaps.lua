
vim.g.mapleader = ' '

vim.keymap.set('n', '<Enter>', '<leader>o') -- Add line below cursor, enter insert mode
vim.keymap.set('n', '<S-Enter>', '<leader>O') -- Add line above cursor, enter insert mode
vim.keymap.set('n', 'zz', '<C-o>:update<cr>') -- Save file if there are changes
vim.keymap.set('i', 'kk', '<ESC>') -- Exit insert mode
vim.keymap.set('n', '<C-h>', '<C-w>h') -- Shift focus to left split 
vim.keymap.set('n', '<C-j>', '<C-w>j') -- Shift focus to bottom split
vim.keymap.set('n', '<C-k>', '<C-w>k') -- Shift focus to top split
vim.keymap.set('n', '<C-l>', '<C-w>l') -- Shift focus to right split
vim.keymap.set('n', '<leader>ft', '<C-o>:Ex<cr>') -- Open netrw
vim.keymap.set('n', '<leader>j', '<C-f>') -- Page down
vim.keymap.set('n', '<leader>k', '<C-b>') -- Page up
vim.keymap.set('n', 'H', '^') -- Easier left horizontal nav
vim.keymap.set('n', 'L', '$') -- Easier right horizontal nav


-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- Telescope find files
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- Telescope live grep
vim.keymap.set('n', '<leader>fb', builtin.buffers, {}) -- Telescope buffers
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}) -- Telescope help tags

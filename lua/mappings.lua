-- aliases
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-- no poder usar flechas del teclado
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

-- mod insertar poder desplazarse entre el texto
--map('i', '<C-h>', '<left>', default_opts)
--map('i', '<C-j>', '<up>', default_opts)
--map('i', '<C-k>', '<down>', default_opts)
--map('i', '<C-l>', '<right>', default_opts)

-- guardar y salir rapido
map('n', '<leader>s', ':w<CR>', default_opts)
--map('i', '<leader>s', '<C-c>:w<CR>', default_opts)
map('n', '<leader>q', ':quit<CR>', default_opts)

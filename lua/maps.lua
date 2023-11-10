-- space como clave lider
vim.g.mapleader = " "

-- Importar el módulo 'keymap' de Vim
local keymap = vim.keymap

-- Configuración de Mapeos de Teclas
-- Modos
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t", 
--   command_mode = "c",

-- Normal --
-- guardar / salir rapido
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "<leader>qa", ":quitall<CR>")


-- mejora de la navegacion por las ventanas
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")

-- Mover el enfoque entre ventanas
-- En modo normal, puedes utilizar 'Espacio' para mover el enfoque a la ventana actual.
keymap.set('n', '<leader>m', '<C-w>W')

-- redimencionar con flechas
keymap.set("n", "<A-Up>", ":resize +2<CR>")
keymap.set("n", "<A-Left>", ":vertical resize -2<CR>")
keymap.set("n", "<A-Down>", ":resize -2<CR>")
keymap.set("n", "<A-Right>", ":vertical resize +2<CR>")

-- navegar por los buffers
keymap.set("n", "<S-l>", ":bnext<CR>")
keymap.set("n", "<S-h>", ":bprevious<CR>")

-- Evitar cortar (yak) con la tecla 'x' en modo normal
keymap.set('n', 'x', '"_X')

-- Incremento y decremento
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Acciones de Ventanas
keymap.set('n', '<leader>te', ':tabedit<Return>', { silent = true })
keymap.set('n', '<leader>ss', ':split<Return><C-w>W', { silent = true })
keymap.set('n', '<leader>sv', ':vsplit<Return><C-w>W', { silent = true })

-- Insertar --
-- pulsar jk rapido para entrar
keymap.set("i", "jk", "<ESC>")

-- Visual --
-- permanecer en modo sangria
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- mover el texto hacia arriba y hacia abajo
keymap.set("v", "<C-j>", ":m .+1<CR>==")
keymap.set("v", "<C-k>", ":m .-2<CR>==")
keymap.set("v", "p", '"_dP')

-- Visual Block --
-- mover el texto hacia arriba y hacia abajo
keymap.set("x", "J", ":move '>+1<CR>gv-gv")
keymap.set("x", "K", ":move '<-2<CR>gv-gv")
keymap.set("x", "<C-j>", ":move '>+1<CR>gv-gv")
keymap.set("x", "<C-k>", ":move '<-2<CR>gv-gv")

--[[
-- Terminal --
keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope buscador
keymap.set("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
keymap.set("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
keymap.set("n", "<leader>ob", "<cmd>lua require('telescope.builtin').buffers()<cr>")
keymap.set("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
]] --

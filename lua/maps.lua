-- Importar el módulo 'keymap' de Vim
local keymap = vim.keymap

-- Configuración de Mapeos de Teclas

-- Evitar cortar (yank) con la tecla 'x' en modo normal
keymap.set('n', 'x', '"_X')

-- Incremento y decremento

-- En modo normal, puedes utilizar 'Ctrl-a' para incrementar el número bajo el cursor.
keymap.set('n', '+', '<C-a>')

-- En modo normal, puedes utilizar 'Ctrl-x' para decrementar el número bajo el cursor.
keymap.set('n', '-', '<C-x>')

-- Eliminar una palabra hacia atrás en modo normal
keymap.set('n', 'dw', 'vb"_d')

-- Selección de todo el texto en el buffer
-- En modo normal, puedes utilizar 'Ctrl-a' (o su equivalente en otros sistemas operativos) para seleccionar todo el texto en el buffer.
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Acciones de Ventanas
-- En modo normal, puedes utilizar 'te' para abrir una nueva pestaña en el editor.
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
-- En modo normal, puedes utilizar 'ss' para dividir la ventana horizontalmente y 'sv' para dividirla verticalmente.
keymap.set('n', 'ss', ':split<Return><C-w>W', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>W', { silent = true })

-- Mover el enfoque entre ventanas
-- En modo normal, puedes utilizar 'Espacio' para mover el enfoque a la ventana actual.
keymap.set('n', '<Space>', '<C-w>W')
-- En modo normal, puedes utilizar combinaciones como 'Shift-Izquierda', 'Shift-Arriba', 'Shift-Abajo' y 'Shift-Derecha' para cambiar el enfoque entre ventanas.
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')

-- Redimensionar ventanas
-- En modo normal, puedes utilizar 'Ctrl-Shift-Izquierda' para reducir el ancho, 'Ctrl-Shift-Derecha' para aumentar el ancho,
-- 'Ctrl-Shift-Arriba' para aumentar la altura y 'Ctrl-Shift-Abajo' para reducir la altura de la ventana.
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

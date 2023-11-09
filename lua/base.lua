-- Deshabilitar todos los comandos automáticos
vim.cmd('autocmd!')

-- Configuración de codificación de scripts y archivos
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- Mostrar números de línea en la ventana actual
vim.wo.number = true

-- Habilitar opciones de Vim
vim.opt.title = true -- Mostrar el título de la ventana
vim.opt.autoindent = true -- Habilitar la autoindentación
vim.opt.hlsearch = true -- Resaltar resultados de búsqueda
vim.opt.backup = false -- Deshabilitar la creación de copias de seguridad
vim.opt.showcmd = true -- Mostrar el comando que se está escribiendo
vim.opt.cmdheight = 1 -- Establecer la altura del comando a 1 línea
vim.opt.laststatus = 2 -- Mostrar la barra de estado en la parte inferior
vim.opt.expandtab = true -- Expandir tabulaciones en espacios
vim.opt.scrolloff = 10 -- Desplazamiento mínimo de 10 líneas al final y al principio
vim.opt.shell = 'fish' -- Usar el shell Fish como shell predeterminado
vim.opt.backupskip = '/tmp/*,/private/tmp/*' -- Evitar la creación de copias de seguridad en carpetas específicas
vim.opt.inccommand = 'split' -- Actualizar la vista previa mientras se escriben comandos de sustitución
vim.opt.ignorecase = true -- Hacer que las búsquedas sean insensibles a mayúsculas y minúsculas
vim.opt.smarttab = true -- Habilitar la sangría inteligente
vim.opt.breakindent = true -- Mantener la sangría al dividir líneas
vim.opt.shiftwidth = 2 -- Establecer el ancho de sangría a 2 espacios
vim.opt.tabstop = 2 -- Establecer el ancho de tabulación a 2 espacios
vim.opt.ai = true -- Activar la autoindentación
vim.opt.si = true -- Activar la sangría inteligente
vim.opt.wrap = false -- Deshabilitar el ajuste automático de líneas
vim.opt.backspace = 'start,eol,indent' -- Permitir borrar en varios lugares

-- Configuración de búsqueda de archivos
vim.opt.path:append { '**' } -- Buscar archivos en subcarpetas
vim.opt.wildignore:append { '*/node_modules/*' } -- Ignorar la carpeta 'node_modules'

-- Configuración de subrayado
-- (Nota: la configuración para iterm2 parece no funcionar)
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Deshabilitar el modo de pegar al salir del modo de inserción
vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = '*',
    command = "set nopaste"
})

-- Configuración de formato
vim.opt.formatoptions:append { 'r' } -- Habilitar el formateo automático al continuar escribiendo texto

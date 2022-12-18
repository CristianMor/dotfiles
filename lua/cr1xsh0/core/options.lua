--
--[[ :help options ]]--
--

local opt = vim.opt                            -- para ser más concisos

-- linea de numeros
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- line de cursor
opt.cursorline = true

-- Apariencia
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- portapapeles
opt.clipboard:append("unnamedplus")

-- ventanas split 
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")


--

-- local options = {
--   backup = false,				                       -- crear archivos de respaldo
--   --cmdheight = 2,				                     -- mas espacio en la line de comandos de neovim para mostrar mensajes
--   completeopt = { "menuone", "noselect" },     -- sobre todo para cmp 
--   conceallevel = 0,                  				   -- para que `` sea visible en los archivos markdown
--   fileencoding = "utf-8",              			   -- la codificacion escrita en un archivo
--   hlsearch = true,			                    	 -- resaltar todas las conincidencias del patron de busqueda anterior
--   mouse = "a",				                       -- permitir el uso del raton en neovim
--   pumheight = 10,				                       -- altura del menu emergente
--   --showmode = false, 			                   -- no neceistamos ver mas cosas como -- INSERTAR --.
--   showtabline = 2,				                     -- mostrar siempre las pesta;as
--   smartindent = true,				                   -- volver hacer la sangria mas inteligente
--   splitbelow = true,				                   -- forzar que todas las divisiones horizontales vayan por debajo de la ventana actual
--   splitright = true,			                   	 -- forzar que todas las divisiones verticales vayan a la derecha de la ventana actual
--   swapfile = false, 				                   -- crea un archivo de intercambio
--   timeoutlen = 1000,				                   -- tiempo de espera para que se complete una secuencia asignada (en millisegundos)
--   undofile = true,				                     -- habilitar el deshacer persistente
--   updatetime = 300, 				                   -- finalizacion mas rapida (4000ms por defecto)
--   writebackup = false, 			                   -- si un archivo esta siendo editado por otro programa (o se escribio en el archivo mientras se editaba con otro programa), nose permite la edicion
--   scrolloff = 8,                               -- es uno de mis favoritos
--   sidescrolloff = 8,
--   guifont = "Monaco:h10",                      -- la fuente utilizada en las aplicaciones graficas de neovim
-- }
--
-- vim.opt.shortmess:append "c"
--
-- for k, v in pairs(options) do
--   vim.opt[k] = v
-- end
--
-- vim.cmd "set whichwrap+=<,>,[,],h,l"
-- vim.cmd [[set iskeyword+=-]]
-- vim.cmd [[set formatoptions-=cro]]                  -- TODO: esto no parece funcionar 

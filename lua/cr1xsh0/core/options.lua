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

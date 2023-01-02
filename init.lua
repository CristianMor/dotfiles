--[[
 INIT.LUA
]] --

-- CORE 
require "cr1xsh0.core.options"
require "cr1xsh0.core.keymaps"
require "cr1xsh0.core.colorscheme"
--

require "cr1xsh0.plugins-setup"
require "cr1xsh0.plugins.comment"
require "cr1xsh0.plugins.nvim-tree"
require "cr1xsh0.plugins.feline"
require "cr1xsh0.plugins.telescope"
require "cr1xsh0.plugins.nvim-cmp"
require "cr1xsh0.plugins.lsp.mason"
<<<<<<< HEAD
require "cr1xsh0.plugins.gitsigns"
=======
require "cr1xsh0.plugins.lsp.lspsaga"
require "cr1xsh0.plugins.lsp.handlers"
>>>>>>> lsp

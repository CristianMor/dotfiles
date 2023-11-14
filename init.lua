--[[
 INIT.LUA
 ]]--

-- CORE
require("base")
require("highlights")
require("maps")


-- PLUGINS
require("plugins")

-- Verifica si una característica específica está disponible en Neovim.
--
-- @param x La característica a verificar, puede ser una cadena o un número.
--          Para obtener una lista de características posibles, consulta la
--          documentación de Neovim o utiliza el comando `:checkhealth`.
--
-- @return Devuelve `true` si la característica está disponible, `false` en caso contrario.
local has = function(x)
	return vim.fn.has(x) == 1
end

local is_mac = has("macunix")
local is_win = has("win32")

if is_mac then
	require("macos")
end

if is_win then
	require("windows")
end

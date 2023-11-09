-- Importar el módulo 'neosolarized' y configurar el tema si está disponible
local status, n = pcall(require, 'neosolarized')
if (not status) then
    return -- El tema 'neosolarized' no está disponible, no se realiza ninguna configuración.
end

-- Configuración del tema 'neosolarized'
n.setup({ commit_italics = true })

-- Importar el módulo 'colorbuddy' y definir colores y grupos de resaltado
local colorbuddy = require('colorbuddy.init')
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles

-- Definir colores personalizados utilizando 'Color.new'
Color.new('black', '#000000')

-- Definir grupos de resaltado personalizados utilizando 'Group.new'

-- Grupo 'CursorLine' para resaltar la línea actual con colores de fondo y texto personalizados.
Group.new('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)

-- Grupo 'CursorLineNr' para resaltar el número de línea en la línea actual con colores de fondo y texto personalizados.
Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)

-- Grupo 'Visual' para resaltar texto seleccionado con colores de fondo e inversión de colores.
Group.new('Visual', colors.none, colors.base03, styles.reverse)

-- Definir colores de texto para diagnósticos de errores, información, advertencias y pistas
local cError = groups.Error.fg
local cInfo = groups.Information.fg
local cWarn = groups.Warning.fg
local cHint = groups.Hint.fg

-- Definir grupos de resaltado para los diagnósticos y subrayado de errores, información, advertencias y pistas
Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)

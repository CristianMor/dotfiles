-- Importar el módulo 'lualine' y configurar la barra de estado si está disponible
local status, lualine = pcall(require, 'lualine')
if (not status) then
    return -- El módulo 'lualine' no está disponible, no se realiza ninguna configuración.
end

-- Configuración de la barra de estado 'lualine'
lualine.setup {
  options = {
    -- Habilitar iconos en la barra de estado
    icons_enabled = true,
    -- Tema de la barra de estado
    theme = 'solarized_dark',
    -- Separadores de secciones
    section_separators = { left = "", right = "" },
    -- Separadores de componentes dentro de las secciones
    component_separators = { left = "", right = "" },
    -- Tipos de archivo deshabilitados para la barra de estado
    disabled_filetypes = {}
  },
  sections = {
    -- Sección 'lualine_a'
    lualine_a = { 'mode' },
    -- Sección 'lualine_b'
    lualine_b = { 'branch' },
    -- Sección 'lualine_c' con información sobre el archivo
    lualine_c = {
      'filename',
      file_status = true,
      path = 0
    },
    -- Sección 'lualine_x' con diagnósticos, codificación y tipo de archivo
    lualine_x = {
      { 'diagnostics', sources = { 'nvim_diagnostic' }, symbols = { error = " ", warn = " ", info = " ", hint = " "} },
      'encoding',
      'filetype'
    },
    -- Sección 'lualine_y' para el progreso
    lualine_y = { 'progress' },
    -- Sección 'lualine_z' para la ubicación
    lualine_z = { 'location' }
  },
  inactive_sections = { 
    -- Sección inactiva 'lualine_a'
    lualine_a = { },
    -- Sección inactiva 'lualine_b'
    lualine_b = { },
    -- Sección inactiva 'lualine_c' con información sobre el archivo
    lualine_c = {
      'filename',
      file_status = true,
      path = 1
    },
    -- Sección inactiva 'lualine_x' para la ubicación
    lualine_x = { 'location' },
    -- Sección inactiva 'lualine_y'
    lualine_y = { },
    -- Sección inactiva 'lualine_z'
    lualine_z = { }
  },
  -- Configuración de la línea de pestañas (tabline)
  tabline = {},
  -- Extensiones de la barra de estado (por ejemplo, 'fugitive')
  extensions = { 'fugitive' }
}

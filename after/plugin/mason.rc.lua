local status, mason = pcall(require, 'mason')
if (not status) then return end

local status1, lspconfig = pcall(require, 'mason-lspconfig')
if (not status1) then return end

mason.setup {}
lspconfig.setup {
  ensure_installed = {"tailwindcss", "intelephense"}
}


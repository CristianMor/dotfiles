local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true,
    disable = {}
  },
  ensure_installed = {
    'html',
    'php',
    'css',
    'javascript',
    'typescript',
    'tsx',
    'json',
    'lua',
    'markdown',
    'markdown_inline'
  }
}

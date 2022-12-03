---------------------------------------------------------
-- Settings
---------------------------------------------------------

---------------------------------------------------------
-- API aliases
---------------------------------------------------------
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

--------------------------------------------------------
-- General
--------------------------------------------------------
g.mapleader = " "		-- change map leader to a space
opt.clipboard = 'unnamedplus' 	-- copy/paste to system clipboard
opt.swapfile = false 		-- don't use swapfile

--------------------------------------------------------
-- UI
--------------------------------------------------------
opt.number = true		-- show line number
opt.relativenumber = true	-- show line number relative
opt.showmatch = true 		-- highlight matching parenthesis
opt.termguicolors = true

exec([[
	augroup markdownSpell
		autocmd!
		autocmd FileType markdown setlocal spell spelllang=es
		autocmd BufRead,BufNewFile *.md setlocal spell spelllang=es
	augroup END
]], false)

-- remove whitespace on save
cmd [[au BufWritePre * :%s/\s\+$//e]]

-- templates
exec([[
	augroup templates
		au!
		let g:template_name = 'Cristian M. Moreno <a.K.a CR1XSH0>'
		autocmd BufNewFile *.* silent! execute '0r ~/.config/nvim/templates/'.expand("<afile>:e").'.tpl'
		autocmd BufNewFile * %s/{{YEAR}}/\=strftime('%Y')/ge
		autocmd BufNewFile * %s/{{NAME}}/\=template_name/ge
		autocmd BufNewFile * %s/{{EVAL\s*\([^}]*\)}}/\=eval(submatch(1))/ge
	augroup END
]], false)


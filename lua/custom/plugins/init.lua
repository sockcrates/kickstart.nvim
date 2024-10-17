-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.opt.colorcolumn = '80,100'
vim.opt.number = true
vim.opt.relativenumber = true

local filetype = vim.bo.filetype
if filetype == 'javascript' or filetype == 'javascriptreact' or filetype == 'lua' or filetype == 'typescript' or filetype == 'typescriptreact' then
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.softtabstop = true
  vim.opt.expandtab = true
end

local prettierThenEslint = function()
  return { 'prettier', 'eslint' }
end
require('conform').formatters_by_ft.javascript = prettierThenEslint
require('conform').formatters_by_ft.javascriptreact = prettierThenEslint
require('conform').formatters_by_ft.typescript = prettierThenEslint
require('conform').formatters_by_ft.typescriptreact = prettierThenEslint

return {}

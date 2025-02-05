-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.opt.colorcolumn = '80,100'
vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'javascript', 'javascriptreact', 'lua', 'typescript', 'typescriptreact' },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.expandtab = true
  end,
})

local prettierThenEslint = function()
  return { 'prettier', 'eslint' }
end
require('conform').formatters_by_ft.javascript = prettierThenEslint
require('conform').formatters_by_ft.javascriptreact = prettierThenEslint
require('conform').formatters_by_ft.typescript = prettierThenEslint
require('conform').formatters_by_ft.typescriptreact = prettierThenEslint

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'cpp' },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.expandtab = false
  end,
})

return {}

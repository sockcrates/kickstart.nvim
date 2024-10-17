return {
  'f-person/git-blame.nvim',
  event = 'VeryLazy',
  keys = {
    { '<leader>tb', '<cmd>GitBlameToggle<CR>', desc = 'Show current line blame' },
  },
}

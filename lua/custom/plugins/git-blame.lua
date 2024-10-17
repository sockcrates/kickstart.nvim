return {
  'f-person/git-blame.nvim',
  event = 'verylazy',
  keys = {
    { '<leader>tb', '<cmd>GitBlameToggle<CR>', desc = 'Show current line blame' },
  },
}

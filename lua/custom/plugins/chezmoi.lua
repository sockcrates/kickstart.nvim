return {
  'alker0/chezmoi.vim',
  config = function()
    vim.g['chezmoi#use_tmp_buffer'] = 1
    vim.g['chezmoi#source_dir_path'] = vim.fn.expand '~/.local/share/chezmoi'
  end,
}

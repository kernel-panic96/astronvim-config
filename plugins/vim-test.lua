return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux"
  },
  lazy = false,
  config = function()
    vim.g['test#strategy'] = {
      nearest = 'vimux',
      file = 'vimux',
      suite = 'vimux'
    }

    vim.g['test#python#pytest#options'] = '--verbose'
  end
}

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

    vim.keymap.set("n", "t<C-n>", "<cmd>TestNearest<cr>")
    vim.keymap.set("n", "t<C-f>", "<cmd>TestFile<cr>")
    vim.keymap.set("n", "t<C-t>", "<cmd>TestSuite<cr>")

    vim.g['test#python#pytest#options'] = '--verbose'
  end,
}

return {
  "tpope/vim-fugitive",
  cmd = "Git",
  config = function()
    vim.cmd("source ./fugitive.vimscript")
  end
}

return {
  "vijaymarupudi/nvim-fzf-commands",
  dependencies = {
    "vijaymarupudi/nvim-fzf"
  },
  lazy = false,
  config = function()
    vim.keymap.set("n", "<c-P>", "<cmd>lua require('fzf-commands').files()<CR>", { silent = true })
    vim.api.nvim_create_user_command("Rg", "call luaeval('require(\"fzf-commands\").rg(_A)', <f-args>)", { nargs = 1 })
  end,
}

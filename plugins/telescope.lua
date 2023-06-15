local actions = require "telescope.actions"

return {
  "nvim-telescope/telescope.nvim",
  -- the first parameter is the plugin specification
  -- the second is the table of options as set up in Lazy with the `opts` key
  config = function(plugin, opts)
    -- run the core AstroNvim configuration function with the options table
    require("plugins.configs.telescope")(plugin, opts)

    vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files hidden=true<cr>")
  end,
  mapping = {
    i = {
      ["<C-n>"] = actions.move_selection_next,
      ["<C-p>"] = actions.move_selection_previous,
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
    },
    n = {
      ["q"] = actions.close,
      ["<esc>"] = actions.close,
    },
  }
}

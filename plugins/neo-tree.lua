return {
  "nvim-neo-tree/neo-tree.nvim",
  lazy = false,
  config = function()
    require("neo-tree").setup({
      window = {
        mappings = {
          ["x"] = "close_node",
          ["l"] = false, -- disable default mapping
          ["p"] = { "toggle_preview", config = { use_float = true } },
          ["o"] = "open_with_window_picker",
          ["w"] = false, -- disable default mapping
        }
      }
    })
  end,
}

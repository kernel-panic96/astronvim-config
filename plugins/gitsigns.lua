return {
  "lewis6991/gitsigns.nvim",
  config = function(_, opts)
    require("gitsigns").setup(opts)
  end,
  init = function()
    vim.keymap.set("n", "gj", "<cmd>Gitsigns next_hunk<cr>")
    vim.keymap.set("n", "gk", "<cmd>Gitsigns prev_hunk<cr>")
    vim.keymap.set("n", "gp", "<cmd>Gitsigns preview_hunk_inline<cr>")
    vim.keymap.set("n", "ga", "<cmd>Gitsigns stage_hunk<cr>")
    vim.keymap.set("n", "gu", "<cmd>Gitsigns reset_hunk<cr>")
  end,
}

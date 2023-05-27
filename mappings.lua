-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr)
            require("astronvim.utils.buffer").close(
              bufnr)
          end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>q"] = { ":q<cr>", desc = "close buffer" },
    ["<leader>w"] = { ":w<cr>", desc = "write buffer" },

    ["O"] = { "O<esc>", desc = "insert new line above and stay in normal mode" },
    [";"] = { ":", desc = "enter command mode" },

    ["tl"] = { ":tabnext<cr>" }, --  TODO figure out nowait
    ["th"] = { ":tabprevious<cr>" },
    ["tn"] = { ":tabnew<cr>" },

    ["0"] = { "^" },

    ["<leader><cr>"] = { "za", desc = "fold toggle" },

    ["gj"] = { ":Gitsigns next_hunk<cr>" },
    ["gk"] = { ":Gitsigns prev_hunk<cr>" },
    ["gp"] = { ":Gitsigns preview_hunk_inline<cr>" },
    ["ga"] = { ":Gitsigns stage_hunk<cr>" },
    ["gu"] = { ":Gitsigns reset_hunk<cr>" },
    ["t<C-n>"] = { ":TestNearest<cr>" },
    ["t<C-f>"] = { ":TestFile<cr>" },
    ["t<C-t>"] = { ":TestSuite<cr>" },
    ["<C-f>"] = { ":ZenMode<cr>" },
  },
  t = {
    -- setting a mapping to false will disable it
    ["<esc>"] = { "<C-\\><C-n>" }
  },
}

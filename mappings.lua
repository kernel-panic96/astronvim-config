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

    ["tl"] = { "<cmd>tabnext<cr>", nowait = true },
    ["th"] = { "<cmd>tabprevious<cr>" },
    ["tn"] = { "<cmd>tabnew<cr>" },

    ["0"] = { "^" }, -- make '0' go to first non empty character instead to column 0

    ["<leader><cr>"] = { "za", desc = "Toggle code fold" },

    ["<C-f>"] = { "<cmd>ZenMode<cr>", desc = "Toggle focus mode" },
  },
  i = {
    [";i"] = { "__import__('ipdb').set_trace()" }
  },
  t = {
    -- setting a mapping to false will disable it
    ["<esc>"] = { "<C-\\><C-n>" }
  },
}

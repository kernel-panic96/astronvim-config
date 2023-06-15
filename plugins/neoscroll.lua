return {
  "karb94/neoscroll.nvim",
  event = "BufRead",
  config = function()
    require("neoscroll").setup({
      -- All these keys will be mapped to their corresponding default scrolling animation
      mappings = { '<C-u>', '<C-d>', '<C-b>',
        '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
      hide_cursor = false,           -- Hide cursor while scrolling
      stop_eof = true,               -- Stop at <EOF> when scrolling downwards
      easing_function = "quadratic", -- Default easing function
    })
  end
}

-- lua/plugins/rose-pine.lua
---@module 'lazy'
---@type LazySpec
return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000,
  -- remove lazy and priority when adding config
  -- config = function() vim.cmd 'colorscheme rose-pine' end,
}

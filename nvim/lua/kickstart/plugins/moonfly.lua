---@module 'lazy'
---@type LazySpec
return { -- You can easily change to a different colorscheme.
  'bluz71/vim-moonfly-colors',
  name = 'moonfly',
  config = function() vim.cmd 'colorscheme moonfly' end,
}

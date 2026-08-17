--- [[ NO NECK PAIN: A plugin that centers window. ]]

---@module 'lazy'
---@type LazySpec
return {
  'shortcuts/no-neck-pain.nvim',
  version = '*',
  keys = {
    { '<leader>z', '<cmd>NoNeckPain<cr>', desc = 'Toggle Zen Mode' },
  },
}

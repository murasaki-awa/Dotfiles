--[[ nvim-autopairs: This plugin helps to auto-close braces and quotes. ]]

---@module 'lazy'
---@type LazySpec
return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  opts = {},
}

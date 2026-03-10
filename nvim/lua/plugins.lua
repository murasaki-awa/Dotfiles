-- ------------------------------------------------------------------------
-- PLUGINS
-- ------------------------------------------------------------------------
require('lazy').setup({
  require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.blink',
  require 'kickstart.plugins.conform',
  -- require 'kickstart.plugins.debug'
  require 'kickstart.plugins.filetype',
  require 'kickstart.plugins.gitsigns',
  require 'kickstart.plugins.indent-line',
  require 'kickstart.plugins.lint',
  require 'kickstart.plugins.lspconfig',
  require 'kickstart.plugins.mini-nvim',
  require 'kickstart.plugins.neo-tree',
  require 'kickstart.plugins.rose-pine',
  require 'kickstart.plugins.telescope',
  require 'kickstart.plugins.todo-comments',
  -- require 'kickstart.plugins.tokyo-night',
  require 'kickstart.plugins.tree-sitter',
  require 'kickstart.plugins.vim-tmux-navigator',
  require 'kickstart.plugins.vimtex',
  require 'kickstart.plugins.which-key',
  require 'kickstart.plugins.no-neck-pain',
}, { ---@diagnostic disable-line: missing-fields
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
-- ------------------------------------------------------------------------

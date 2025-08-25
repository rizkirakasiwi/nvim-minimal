-- Load core configuration
require 'config.options' -- Basic Neovim options
require 'config.keymaps' -- Key mappings
require 'config.autocmds' -- Autocommands
require 'config.lazy' -- Bootstrap lazy.nvim

-- Load plugins using our custom loader
local plugin_loader = require('plugins')
local all_plugins = plugin_loader.get_all_plugins()

require('lazy').setup(all_plugins, {
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

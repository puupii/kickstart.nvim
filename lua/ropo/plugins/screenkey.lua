return {
  {
    'NStefan002/screenkey.nvim',
    lazy = false,
    version = '*', -- or branch = "main", to use the latest commit
    config = function()
      local screenkey = require 'screenkey'
      screenkey.setup {
        win_opts = {
          row = 1,
          anchor = 'NE',
          width = 30,
        },
      }
      vim.api.nvim_create_autocmd('VimEnter', {
        callback = function()
          if screenkey.is_active() then
            return
          else
            screenkey.toggle()
          end
        end,
      })
    end,
  },
}

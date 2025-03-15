local M = {}
local theme = require('templeos.theme')
M.setup = function()
  vim.cmd('hi clear')
  vim.o.background = 'light'
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end
  vim.o.termguicolors = true
  vim.g.colors_name = 'templeos'
  
  -- Add this line to set the cursor appearance
  vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
  
  theme.set_highlights()
end
return M

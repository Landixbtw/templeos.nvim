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
  -- Add these lines after your colorscheme is loaded
vim.cmd([[
  highlight Cursor guifg=white guibg=black
  highlight iCursor guifg=white guibg=black
  highlight vCursor guifg=white guibg=black
  highlight lCursor guifg=white guibg=black
  highlight CursorIM guifg=white guibg=black
]])

-- Set guicursor to use these highlight groups
  vim.opt.guicursor = "n-v-c-sm:block-Cursor,i-ci-ve:ver25-iCursor,r-cr-o:hor20-Cursor"
  -- Add this line to set the cursor appearance
  -- vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
  
  theme.set_highlights()
end
return M

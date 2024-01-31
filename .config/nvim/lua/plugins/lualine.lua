local config = function()
  local theme = require('lualine.themes.nightfox')

  require('lualine').setup  {
    options = {
      theme = theme,
    },
  }
end


return {
  'nvim-lualine/lualine.nvim',
  config = config,
}

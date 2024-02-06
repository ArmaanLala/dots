local config = function()
    require('lualine').setup {
        options = {
            theme = 'auto',
        },
    }
end


return {
    'nvim-lualine/lualine.nvim',
    config = config,
}


return {
    {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('lualine').setup({
                -- 配置主题
                options = { theme  = 'ayu_mirage' }
                }
            )
        end
    }
}

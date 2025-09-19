return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require("lualine").setup({
            options = {
                theme = "tokyonight"
            }
        })
    end
}

--[[

statusline 플러그인. 아래쪽에 나오는 statusline을 커스텀 가능하도록 만들어준다.

--]]

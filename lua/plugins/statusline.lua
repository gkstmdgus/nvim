return {
    'itchyny/lightline.vim',
    lazy = false,
    config = function()
        vim.g.lightline = {
            colorscheme = 'nightfly',
            enable = {
                tabline = 0
            }
        }
    end
}


--[[

statusline 플러그인. 아래쪽에 나오는 statusline을 커스텀 가능하도록 만들어준다.

--]]

return {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000,
    config = function()
        -- 이 'config' 함수 블록 안의 코드는 moonfly 플러그인이 로드된 후에만 실행됩니다.
        vim.cmd.colorscheme("nightfly")
    end,
}

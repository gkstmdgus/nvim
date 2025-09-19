return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("bufferline").setup {}
    end,
}

--[[

에디터 상단에 여러 버퍼를 나열하는 버퍼탭(bufffer-line) 추가

--]]

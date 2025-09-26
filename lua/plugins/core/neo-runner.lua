local mapKey = require("utils.keyMapper").mapKey

return {
    {
        "CRAG666/code_runner.nvim",
        -- config = true
        config = function()
            require("code_runner").setup({})
            mapKey("<leader>rx", ":RunCode<cr>", "n", { desc = "[R]un [C]ode" })
            mapKey("<leader>rf", ":RunFile<cr>", "n", { desc = "[R]un [F]ile" })
            mapKey("<leader>rp", ":RunProject<cr>", "n", { desc = "[R]un [P]roject" })
            mapKey("<leader>rc", ":RunClose<cr>", "n", { desc = "[R]un Close" })
        end
    },
}

--[[

Neovim에서 코드 스니펫이나 현재 파일을 바로 실행할 수 있게 해주는 플러그인

:RunCode 현재 코드 실행
:RunFile 현재 파일 실행
:RunProject 프로젝트 단위 실행 (별도 설정 필요)
:RunClose 실행 창 닫기

--]]

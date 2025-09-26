return {
    'kiddos/gemini.nvim',
    lazy = false,
    opts = {
        chat_config = { enabled = false },
        hints = { enabled = false },
        instruction = { enabled = false },
        task = { enabled = false },
        completion = { enabled = true }
    },
    config = function()
        -- GEMINI_API_KEY 환경변수 값 가져오기
        local api_key = os.getenv("GEMINI_API_KEY")

        -- 환경변수가 설정되어 있지 않으면 에러를 출력하고 함수 종료
        if not api_key then
            vim.notify(
                "GEMINI_API_KEY 환경변수가 설정되지 않았습니다. Gemini 기능을 사용할 수 없습니다.",
                vim.log.levels.ERROR,
                { title = "Gemini Error" }
            )
            return
        end

        -- 환경변수가 존재하면 gemini.nvim을 설정
        require('gemini').setup({
            -- setup 옵션
        })
    end
}

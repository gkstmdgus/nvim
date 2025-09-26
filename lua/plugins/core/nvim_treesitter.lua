return {
    -- highlight syntax
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "javascript", "html", "python" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}

--[[

Neovim의 코드 파싱 및 하이라이팅 개선 플러그인
Neovim이 코드를 언어별 문법 구조(AST, Abstract Syntax Tree) 로 이해하게 만들어 주는 엔진

	•	더 정확한 구문 하이라이팅
        •	기존 regex 기반 하이라이팅보다 훨씬 정확하고 깔끔함
	•	코드 접기(folding)
        •	foldmethod=expr + treesitter 로 구조적 코드 접기 가능
	•	코드 탐색 & 텍스트 객체
        •	함수/클래스/블록 단위 이동 (]m, [m 등)
        •	특정 구문 객체 선택 (af, if, ac, ic 등)
    •	코드 리팩토링 도구
        •	변수 정의/참조 찾기, 범위별 highlight, smart rename 등
    •	Incremental selection
        •	구문 트리를 따라 점진적으로 선택 영역 확장/축소

--]]

return {
    'xiyaowong/transparent.nvim',
    config = function()
        local transparent = require("transparent")
        transparent.setup({
            -- table: default groups
            groups = {
                'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
                'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
                'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
                'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
                'EndOfBuffer',
            },
            -- table: additional groups that should be cleared
            extra_groups = {
                "NormalFloat",
                "NvimTreeNormal"
            },
            -- table: groups you don't want to clear
            exclude_groups = {},
            -- function: code to be executed after highlight groups are cleared
            -- Also the user event "TransparentClear" will be triggered
            on_clear = function() end,
        })
    end
}

--[[

Neovim UI의 배경(background)을 투명하게 만들어주는 플러그인

	•	상태라인(statusline), 탭라인, 플로팅 윈도우 등 다양한 UI 영역의 배경색 제거
	•	특정 하이라이트 그룹을 지정해서 투명 처리 예외 가능
	•	colorscheme와 독립적으로 동작 → 어떤 테마에도 적용 가능

--]]

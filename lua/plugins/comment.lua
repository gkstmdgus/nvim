return -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
{
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false
}

--[[

주석을 생성할 때 편리한 기능을 제공한다.

- 라인 주석(Line Commenting): 현재 라인에 주석을 달거나, 주석을 해제할 수 있습니다.
- 블록 주석(Block Commenting): 여러 줄을 시각적 모드로 선택한 뒤, 단축키를 눌러 한 번에 주석을 처리할 수 있습니다.
- 스마트한 토글: 한 번 더 단축키를 누르면 주석이 해제됩니다. 이 플러그인은 자동으로 현재 파일 타입(예: Python, C++, Lua)을 감지하여 올바른 주석 문법을 사용합니다.
- 커스텀 주석: 파일 타입에 따라 다른 주석 문법을 사용할 수 있도록 설정할 수 있습니다.

NOTE
gcc: 현재 라인 주석

--]]

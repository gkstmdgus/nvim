return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        local neo_tree = require("neo-tree")

        neo_tree.setup({
            window = {
                mappings = {
                    -- Space 키로 파일 열기
                    ["<space>"] = "open",
                },
            },
            default_component_configs = {
                icon = {
                    folder_closed = '▶', -- 닫힌 폴더 아이콘 (오른쪽 화살표)
                    folder_open = '▼', -- 열린 폴더 아이콘 (아래쪽 화살표)
                    -- 기타 아이콘 설정도 여기에 추가할 수 있습니다.
                },
            },
        })
    end
}

--[[

tree 구조로 파일 탐색하는 플러그인

--]]
--]]

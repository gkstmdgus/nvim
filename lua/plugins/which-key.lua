return {                -- Useful plugin to show you pending keybinds.
    "folke/which-key.nvim",
    event = "VimEnter", -- Sets the loading event to 'VimEnter'
    opts = {
        preset = "helix",
        -- delay between pressing a key and opening which-key (milliseconds)
        -- this setting is independent of vim.opt.timeoutlen
        delay = 0,
        icons = {
            -- set icon mappings to true if you have a Nerd Font
            mappings = vim.g.have_nerd_font,
            -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
            -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
            keys = vim.g.have_nerd_font and {} or {
                Up = "<Up> ",
                Down = "<Down> ",
                Left = "<Left> ",
                Right = "<Right> ",
                C = "<C-…> ", -- Ctrl
                M = "<M-…> ", -- Meta?
                D = "<D-…> ", -- Command
                S = "<S-…> ", -- Shift
                CR = "<CR> ", -- Enter (Carriage Return)
                Esc = "<Esc> ",
                ScrollWheelDown = "<ScrollWheelDown> ",
                ScrollWheelUp = "<ScrollWheelUp> ",
                NL = "<NL> ",
                BS = "<BS> ",
                Space = "<Space> ",
                Tab = "<Tab> ",
                F1 = "<F1>",
                F2 = "<F2>",
                F3 = "<F3>",
                F4 = "<F4>",
                F5 = "<F5>",
                F6 = "<F6>",
                F7 = "<F7>",
                F8 = "<F8>",
                F9 = "<F9>",
                F10 = "<F10>",
                F11 = "<F11>",
                F12 = "<F12>",
            },
        },

        -- Document existing key chains
        spec = {
            { "<leader>f", group = "[F]ind" },
            { "<leader>h", group = "Git [H]unk" },
            { "<leader>g", group = "[G]it" },
            { "<leader>d", group = "[D]ebug" },
            { "<leader>r", group = "[R]un" },
        },
    },
}

--[[

Neovim에서 키 매핑을 실시간으로 안내해주는 플러그인

	•	리더키 매핑 힌트
        •	<leader> 누르면, 어떤 키 조합이 가능한지 팝업으로 표시
	•	자동 문서화
        •	키매핑에 설명(desc)을 달면, 메뉴처럼 보기 쉽게 정리됨
	•	그룹핑
        •	관련된 키맵들을 하위 메뉴처럼 묶어 보여줌
	•	학습 도우미
        •	복잡한 키맵 조합을 외우지 않아도 되고, 새로운 키맵 익힐 때 유용

--]]

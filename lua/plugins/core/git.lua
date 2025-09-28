return {
    -- Adds git related signs to the gutter, as well as utilities for managing changes
    -- NOTE: gitsigns is already included in init.lua but contains only the base
    -- config. This will add also the recommended keymaps.
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            on_attach = function(bufnr)
                local gitsigns = require("gitsigns")

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                -- normal mode
                map("n", "<leader>hb", gitsigns.blame_line, { desc = "git [b]lame line" })
                map("n", "<leader>hd", gitsigns.diffthis, { desc = "git [d]iff against index" })

                -- Toggles
                map("n", "<leader>gB", gitsigns.toggle_current_line_blame, { desc = "toggle [G]it show [B]lame line" })
                map("n", "<leader>gD", gitsigns.toggle_deleted, { desc = "toggle [G]it show [D]eleted" })
            end,
        },
    },
    {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>gs", ":Neotree float git_status<CR>", { desc = "[G]it [S]tatus" })
            vim.keymap.set("n", "<leader>gb", ":Git branch<CR>", { desc = "[G]it [B]ranch" })
            vim.keymap.set(
                "n",
                "<leader>gg",
                ":Git log --oneline --graph --decorate --all<CR>",
                { desc = "[G]it [G]raph" }
            )
        end,
    },
}

--[[

Git 관련 단축키 도구. 사용방법은 학습 필요

--]]

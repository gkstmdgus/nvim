-- plugins/telescope.lua:
local mapKey = require("utils.keyMapper").mapKey
return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            mapKey("<leader>ff", builtin.find_files, "n", { desc = "[F]ind [F]iles" })
            mapKey("<leader>fg", builtin.live_grep, "n", { desc = "[F]ind [G]rep" })
            mapKey("<leader>fb", builtin.buffers, "n", { desc = "[F]ind [B]uffers" })
            mapKey("<leader>fh", builtin.help_tags, "n", { desc = "[F]ind [H]elp tags" })
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}

--[[

파일/버퍼/심볼/grep 검색 등을 빠르고 인터랙티브한 UI로 찾아주는 도구

--]]

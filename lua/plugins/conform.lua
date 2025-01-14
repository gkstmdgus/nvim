return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")
        conform.setup({
            debug = true,
            formatters_by_ft = {
                lua = { "stylua" },
                -- Conform will run multiple formatters sequentially
                python = { "isort", "black" },
                -- You can customize some of the format options for the filetype (:help conform.format)
                rust = { "rustfmt", lsp_format = "fallback" },
                -- Conform will run the first available formatter
                javascript = { "prettierd", "prettier", stop_after_first = true },
            },
            format_on_save = {
                -- These options will be passed to conform.format()
                timeout_ms = 10000,
                lsp_format = "fallback",
            },
        })

        vim.keymap.set({ "n", "v" }, "<Leader>l", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 10000,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}


-- NOTE
-- python원래 안됐었는데 터미널에서 balck {python file} 명령어로 테스트 하고나니 정삭작동

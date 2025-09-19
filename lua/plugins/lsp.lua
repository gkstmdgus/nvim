local keyMapper = require('utils.keyMapper').mapKey

return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_insatlled = { "lua_ls", "ts_ls", "clangd", "pyright" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.pyright.setup({})

            -- vim.lsp.buf.hover
            -- vim.lsp.buf.definition
            keyMapper('K', vim.lsp.buf.hover)
            keyMapper('gd', vim.lsp.buf.definition)
            keyMapper('<leader>ca', vim.lsp.buf.code_action)
        end
    }
}


--[[

mason.vim:
LSP(Language Server Protocol) 서버,
DAP(Debug Adapter Protocol) 어댑터,
린터(linters),
포맷터(formatters)
등을 쉽게 설치하고 관리할 수 있게 해주는 플러그인

mason-lspconfig.nvim
nvim-lspconfig에 mason으로 설치한 lsp 설정을 적용시켜주는 플러그인

nvim-lspconfig.nvim
neovim에서 lsp를 사용하기 위한 플러그인

--]]

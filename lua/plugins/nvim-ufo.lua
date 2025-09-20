return {
    {
        -- fold code
        "kevinhwang91/nvim-ufo",
        dependencies = "kevinhwang91/promise-async",
        config = function()
            vim.o.foldcolumn = "0" -- '0' is not bad. show fold column
            vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value. start unfold
            vim.o.foldlevelstart = 99
            vim.o.foldenable = true

            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.foldingRange = {
                dynamicRegistration = false,
                lineFoldingOnly = true,
            }
            local lspconfig_util = require("lspconfig.util")
            local language_servers = lspconfig_util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
            for _, ls in ipairs(language_servers) do
                vim.lsp.config(ls, {
                    capabilities = capabilities,
                    -- you can add other fields for setting up lsp server in this table
                })
            end
            require("ufo").setup()
        end,
    },
}


--[[

UFO (Universal FOld)
코드 접기 가능.

	•	zc → 현재 커서 위치 블록 접기
	•	zo → 현재 블록 열기
	•	zR → 모든 블록 열기
	•	zM → 모든 블록 접기
	•	커서가 있는 접힌 영역에서 p (혹은 ufo의 peek 기능) → 접힌 코드 미리보기 창 표시

--]]

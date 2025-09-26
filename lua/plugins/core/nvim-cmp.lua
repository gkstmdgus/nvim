return {
    {
        "hrsh7th/nvim-cmp",
        event = { "BufReadPost", "BufNewFile" },
        dependencies = {
            {
                "L3MON4D3/LuaSnip", -- 스니펫 엔진
                version = "v2.*",
                build = "make install_jsregexp",
            },
            "saadparwaiz1/cmp_luasnip",     -- 스니펫 소스
            "hrsh7th/cmp-nvim-lsp",         -- LSP 소스(LSP가 제공하는 단어)
            "hrsh7th/cmp-buffer",           -- 버퍼 소스(현재 버퍼 단어)
            "hrsh7th/cmp-path",             -- 파일 경로
            "rafamadriz/friendly-snippets", -- 스니펫 모음집
        },
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")

            -- load snippets
            require("luasnip.loaders.from_vscode").lazy_load()

            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-n>"] = cmp.mapping.select_next_item(),
                    ["<C-p>"] = cmp.mapping.select_prev_item(),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
                -- autocompletion sources
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },                    -- lsp
                    { name = "buffer",  max_item_count = 5 }, -- text within current buffer
                    { name = "path",    max_item_count = 3 }, -- file system paths
                    { name = "luasnip", max_item_count = 3 }, -- snippets
                }),
                -- -- ghost_text
                -- experimental = {
                --     ghost_text = true -- this feature conflict with copilot.vim's preview.
                -- }
            })
        end,
    },
}

--[[

Neovim의 자동완성 엔진 플러그인 (cmp == completion)
- lsp 연동

**snippet engine**
스니펫을 정의해서 패턴을 확장하는 도구

```lua
s("fn", {
  t("def "), i(1, "func_name"), t("():"),
  t({"", "    "}), i(0)
})
```
fn 입력 + <Tab> -> 자동으로

```lua
def func_name():
    |
```

**snippet source**
스니펫 엔진에 등록된 스니펫을 자동완성 후보에 노출시켜주는 역할.
예: fn 입력 시 자동완성 목록에 [Snippet] fn → def ... 이 뜨도록 해줌.

--]]

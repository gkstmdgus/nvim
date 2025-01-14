return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require('tokyonight').setup({
            style = "moon",
            transparent = true,
            terminal_colors = true,
            styles = {
                sidebars = "transparent", -- style for sidebars, see below
                floats = "transparent",
            }
        })
        vim.cmd [[colorscheme tokyonight]]
    end
}

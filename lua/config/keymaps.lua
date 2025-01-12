local mapKey = require("utils.keyMapper").mapKey

-- Neotree toggle
mapKey("<leader>e", ":Neotree toggle<cr>")

-- pane navigation
mapKey("<C-h>", "<C-w>h") -- Left
mapKey("<C-j>", "<C-w>j") -- Down
mapKey("<C-k>", "<C-w>k") -- Top
mapKey("<C-l>", "<C-w>l") -- Right

-- clear search hl
mapKey("<Esc>", ":nohlsearch<CR>")

-- indent
mapKey(">", ">gv", "v")
mapKey("<", "<gv", "v")

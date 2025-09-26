local mapKey = require("utils.keyMapper").mapKey

-- Neotree toggle
mapKey("<leader>E", ":Neotree toggle<cr>")
mapKey("<leader>e", ":Neotree focus<cr>")

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

-- bufferline
mapKey("<leader>]", ":bn<cr>", "n", { desc = "Buffer [N]ext " })
mapKey("<leader>[", ":bp<cr>", "n", { desc = "Buffer [P]revious " })
mapKey("<leader>q", ":Bdelete<cr>", "n", { desc = "Buffer [Q]uit " })

-- buffer size
mapKey("<C-w>h", "<C-w><", "n", { noremap = true, silent = true, desc = "Narrow window" })
mapKey("<C-w>l", "<C-w>>", "n", { noremap = true, silent = true, desc = "Widen window" })
mapKey("<C-w>j", "<C-w>-", "n", { noremap = true, silent = true, desc = "Decrease the height of a window" })
mapKey("<C-w>k", "<C-w>+", "n", { noremap = true, silent = true, desc = "Increase the height of a window" })

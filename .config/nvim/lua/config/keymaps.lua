local set = vim.keymap.set

-- NvimTree
set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "[e]" })

-- Move bewtween windows
set("n", "<C-h>", "<C-w>h", { desc = "[h] Move Window Left" })
set("n", "<C-j>", "<C-w>j", { desc = "[j] Move Window Up" })
set("n", "<C-k>", "<C-w>k", { desc = "[k] Move Window Down" })
set("n", "<C-l>", "<C-w>l", { desc = "[l] Move Window Right" })

-- Window Management  
set("n", "<leader>sv", ":vsplit<CR>", { desc = "[v] Vertical Split" }) -- Vertical Split
set("n", "<leader>sh", ":split<CR>", { desc = "[h] Horizontal Split" }) -- Horizontal Split

-- Telescope 
set('n', '<leader>fk', require('telescope.builtin').keymaps, { desc = '[k] Show keymaps' })
set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = "[f] Find Files" })
set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = "[g] Find Grep" })
set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = "[b] Find Buffers" })
set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = "[h] Find help" })

-- Indent 
set('v', "<", "<gv")
set('v', ">", ">gv")

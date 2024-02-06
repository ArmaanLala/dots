local set = vim.keymap.set

-- NvimTree
set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "[e]" })

-- Move bewtween windows
set("n", "<C-h>", "<C-w>h", { desc = "[h] Move Window Left" })
set("n", "<C-j>", "<C-w>j", { desc = "[j] Move Window Up" })
set("n", "<C-k>", "<C-w>k", { desc = "[k] Move Window Down" })
set("n", "<C-l>", "<C-w>l", { desc = "[l] Move Window Right" })

-- Window Management
set("n", "<leader>sv", ":vsplit<CR>", { desc = "[v] Vertical Split" })  -- Vertical Split
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

-- Lsp Keybinds
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.api.nvim_create_autocmd('BufWritePre', {
            callback = function()
                vim.lsp.buf.format {
                    async = false,
                }
            end,
        })
    end,
})

-- Move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Save
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- Half page jumping while keeping cursor in place
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

local config = function()
  local harpoon = require 'harpoon'
  harpoon:setup {
    global_settings = {
      save_on_toggle = true,
      save_on_change = true,
    },
  }

  -- basic telescope configuration
  local conf = require('telescope.config').values
  local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
      table.insert(file_paths, item.value)
    end

    require('telescope.pickers')
      .new({}, {
        prompt_title = 'Harpoon',
        finder = require('telescope.finders').new_table {
          results = file_paths,
        },
        previewer = conf.file_previewer {},
        sorter = conf.generic_sorter {},
      })
      :find()
  end

  vim.keymap.set('n', '<C-e>', function()
    toggle_telescope(harpoon:list())
  end, { desc = 'Open harpoon window' })

  vim.keymap.set('n', '<leader>a', function()
    harpoon:list():append()
  end, { desc = 'Open harpoon window' })
  vim.keymap.set('n', '<a-right>', function()
    harpoon:list():next()
  end, { desc = 'Open harpoon window' })
  vim.keymap.set('n', '<a-left>', function()
    harpoon:list():prev()
  end, { desc = 'Open harpoon window' })
  vim.keymap.set('n', '<c-right>', function()
    harpoon:list():next()
  end, { desc = 'Open harpoon window' })
  vim.keymap.set('n', '<c-left>', function()
    harpoon:list():prev()
  end, { desc = 'Open harpoon window' })
end
return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = config,
}

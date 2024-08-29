return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',  -- Use a specific tag (or branch if preferred)
    dependencies = { 'nvim-lua/plenary.nvim' },  -- List dependencies
    config = function()
        -- Import the built-in telescope functionality
        local builtin = require('telescope.builtin')

        -- Keybindings for Telescope
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end
}


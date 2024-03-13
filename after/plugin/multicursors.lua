require('multicursors').setup({
    -- Default configuration for the plugin
    -- You can use the `setup` function to change the default configuration
    -- Please refer to the documentation for more information
})
vim.keymap.set({ 'v', 'n' }, '<leader>m', '<cmd>MCstart<CR>', { desc = 'Start multicursor' })

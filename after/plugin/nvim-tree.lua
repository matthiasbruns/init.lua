-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
        highlight_git = "icon",
        highlight_diagnostics = "none",
        highlight_opened_files = "all",
        highlight_modified = "all",
        highlight_bookmarks = "all",
        highlight_clipboard = "name",
    },
    filters = {
        dotfiles = true,
    },
    update_focused_file = {
        enable = true,
    },
})

vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>pv", ":NvimTreeFindFile<CR>")

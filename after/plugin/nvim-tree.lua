-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
    vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
    vim.keymap.set("n", "%", function()
        api.fs.create()
    end)
    vim.keymap.set("n", "d", function()
        api.fs.create()
    end)
end



-- OR setup with some options
require("nvim-tree").setup({
    on_attach = my_on_attach,
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

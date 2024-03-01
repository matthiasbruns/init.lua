--require("tokyodark").setup({}) -- calling setup is optional
vim.cmd [[colorscheme tokyodark]]

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

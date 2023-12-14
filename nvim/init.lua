--vim config
vim.cmd("set expandtab")
vim.cmd("set tabstop=3")
vim.cmd("set softtabstop=3")
vim.cmd("set shiftwidth=3")
vim.g.mapleader = " "

--lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--TODO: move plugins and opts to separate file
local plugins = {
   { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
   { "nvim-telescope/telescope.nvim", tag = "0.1.5", dependencies = { "nvim-lua/plenary.nvim" } }, --or, branch = '0.1.x',
   { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
}
local opts = {}

--require("lazy").setup("plugins")
require("lazy").setup(plugins, opts)

--colorscheme config
require("catppuccin").setup()
vim.cmd.colorscheme("catppuccin")

--telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>g", builtin.live_grep, {})

--tree sitter
local configs = require("nvim-treesitter.configs")

configs.setup({
   ensure_installed = { "c", "lua", "vim", "javascript", "html", "c_sharp", "typescript", "yaml", "markdown", "css", "html", "http" },
   --sync_install = false,
   highlight = { enable = true },
   indent = { enable = true },  
})



--TODO: check this out to split this config into multiple files...
--~/.config/nvim/init.lua
--require("lazy").setup("plugins")
--~/.config/nvim/lua/plugins.lua or ~/.config/nvim/lua/plugins/init.lua (this file is optional)
--return {
--  "folke/neodev.nvim",
--  "folke/which-key.nvim",
--  { "folke/neoconf.nvim", cmd = "Neoconf" },
--}

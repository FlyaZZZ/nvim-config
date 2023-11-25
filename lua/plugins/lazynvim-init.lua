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
plugins = {
    "folke/tokyonight.nvim",
    {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    },
    {
        'nvim-tree/nvim-tree.lua',
        requires = {'nvim-tree/nvim-web-devicons'}
    },
    "christoomey/vim-tmux-navigator",
    "nvim-treesitter/nvim-treesitter",
    "p00f/nvim-ts-rainbow",

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",



    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "hrsh7th/cmp-path",

    "numTostr/Comment.nvim",
    "windwp/nvim-autopairs",

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'akinsho/bufferline.nvim', version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    "lewis6991/gitsigns.nvim", 


}

local opts = {}
require("lazy").setup(plugins, opts)

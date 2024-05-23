-- lazy.nvim --
-- code from github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup({

    -- cyrillic.nvim --
    -- adds cyrillic support for editor commands
    -- code from github.com/nativerv/cyrillic.nvim
    {
        'nativerv/cyrillic.nvim',
        event = { 'VeryLazy' },
        config = function()
        require('cyrillic').setup({
            no_cyrillic_abbrev = false, -- default
        })
        end,
    },

    -- neotree
    -- code from github.com/nvim-neo-tree/neo-tree.nvim
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },

    -- treesitter - advanced highlighting
    {'nvim-treesitter/nvim-treesitter'},

}  
})


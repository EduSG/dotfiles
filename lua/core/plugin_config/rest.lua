require('lazy').setup({
    {
        "vhyrro/luarocks.nvim",
        priority = 1000,
        config = function()
            require('luarocks').setup({
                rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" },
            })
        end,
    },
    {
        "rest-nvim/rest.nvim",
        ft = "http",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("rest-nvim").setup()
        end,
    },
})


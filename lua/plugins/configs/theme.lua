return {
    {
        "folke/tokyonight.nvim",
        dependencies = {
            "nvim-lualine/lualine.nvim",
            "nvim-tree/nvim-web-devicons",
            "utilyre/barbecue.nvim",
            "SmiteshP/nvim-navic",
            "xiyaowong/transparent.nvim",
        },
        config = function()
            vim.cmd[[colorscheme tokyonight-storm]]
            require('lualine').setup {
                options = {
                    theme = 'tokyonight',
                },
            }
            require('barbecue').setup {
                theme = 'tokyonight',
            }
            require("transparent").setup {
                groups = { -- table: default groups
                  'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
                  'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
                  'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
                  'SignColumn', 'CursorLineNr', 'EndOfBuffer',
                },
                extra_groups = {}, -- table: additional groups that should be cleared
                exclude_groups = {}, -- table: groups you don't want to clear
            }
        end
    },
}

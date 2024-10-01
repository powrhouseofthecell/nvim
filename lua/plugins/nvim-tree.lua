return {
    'nvim-tree/nvim-tree.lua',
    requires = {'nvim-tree/nvim-web-devicons'},
    config = function()
        require('nvim-web-devicons').setup {
            override = {},
            default = true
        }
        require("nvim-tree").setup {
            view = {
                relativenumber = true,
                number = true,
                width = 30,
                side = "left"
            },
            renderer = {
                root_folder_label = false,
                icons = {
                    webdev_colors = true,
                    glyphs = {
                        default = "",
                        symlink = "",
                        folder = {
                            arrow_closed = "",
                            arrow_open = "",
                            default = "",
                            open = "",
                            empty = "",
                            empty_open = "",
                            symlink = "",
                            symlink_open = ""
                        },
                        git = {
                            -- unstaged = "",
                            -- staged = "",
                            -- unmerged = "",
                            -- renamed = "➜",
                            -- untracked = "", 
                            -- deleted = "",
                            ignored = "◌"
                        }
                    },
                    show = {
                        git = true,
                        folder = true,
                        file = true,
                        folder_arrow = true
                    }
                }
            }
        }
    end
}

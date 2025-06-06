return {
    {   "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        config = function ()
            if not  vim.g.vscode then
                require("neo-tree").setup({
                    window = {
                        position = "right",
                        close_if_last_window = true
                    },
                    source_selector = {
                        winbar = false,
                    },
                    filesystem = {
                        follow_current_file = {
                            enabled = true
                        }
                    }}

                )
                vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
            end
        end
    }
}

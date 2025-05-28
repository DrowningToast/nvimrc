
return {
    "mbbill/undotree",

    config = function() 
        if vim.g.vscode then
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end
    end
}

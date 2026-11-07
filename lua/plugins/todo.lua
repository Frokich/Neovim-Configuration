return {
    {
        "folke/todo-comments.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
        },
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            require("todo-comments").setup()
        end,
    },
}

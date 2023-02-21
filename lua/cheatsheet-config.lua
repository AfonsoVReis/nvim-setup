require("cheatsheet").setup({
            bundled_plugin_cheatsheets = {
        -- show cheatsheets for all plugins except gitsigns
        disabled = { "gitsigns.nvim", "nerd-fonts" },
            }
})

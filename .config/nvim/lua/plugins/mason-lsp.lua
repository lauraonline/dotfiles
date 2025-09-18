return {
    { 'mason-org/mason.nvim',
        opts = {},
    },
    { "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { 
                "arduino_language_server",
                "bashls",
                "clangd",
                "cssls",
                "tailwindcss",
                "gopls",
                "html",
                "jdtls",
                "ts_ls",
                "jsonls",
                "lua_ls",
                "kotlin_language_server",
                "marksman",
                "powershell_es",
                "pylsp",
                "rust_analyzer",
                "sqlls",
                "vimls",
                "lemminx",
            },
            registries = {
                'github:mason-org/mason-registry',
                'github:Crashdummyy/mason-registry',
            },
        },
        dependencies = {
         "mason-org/mason.nvim",
        },
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "mason-org/mason-lspconfig.nvim" }
    },
}

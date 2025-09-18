return {
    { 'mason-org/mason.nvim',
        opts = {},
    },
    { "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { 
                "arduino_language_server",
                "asm_lsp",
                "bashls",
                "clangd",
                "cssls",
                "tailwindcss",
                "csharp_ls",
                "gopls",
                "html",
                "jdtls",
                "tsserver",
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

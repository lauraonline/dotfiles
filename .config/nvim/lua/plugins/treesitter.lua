return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = { "arduino", "asm", "bash", "c", "c_sharp", "css", "comment", "cpp", "csv", "desktop", "git_config", "gitignore", "go", "html", "java", "javascript", "json", "jsonc", "lua", "kotlin", "markdown_inline", "powershell", "python", "regex", "robots", "rust", "sql", "typescript", "vim", "xml", },
            sync_install = false,
            auto_install = false,
            highlight = {
                enable = true
            }
        })
    end
}

return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    opts = {
        ensure_installed = { "arduino", "asm", "bash", "c", "c_sharp", "css", "comment", "cpp", "csv", "desktop", "git_config", "gitignore", "go", "html", "java", "javascript", "json", "jsonc", "latex", "lua", "kotlin", "markdown_inline", "powershell", "python", "regex", "robots", "rust", "sql", "typescript", "vim", "xml", },
        sync_install = false,
        auto_install = false,
        highlight = {
            enable = true
        }
    }
}

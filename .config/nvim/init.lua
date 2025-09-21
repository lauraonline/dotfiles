-- VIM to LUA command: vim.cmd([COMMAND GOES HERE])
-- useful aliases
local map = vim.keymap.set
local set = vim.opt

vim.g.mapleader = ' '       -- use SPACEBAR as leader
set.number = true           -- show line numbers

-- lazy
require("config.lazy")

set.tabstop = 4             -- 4 spaces tab
set.shiftwidth = 4          -- 4 spaces indentation
set.expandtab = true        -- use spaces when tabbing

-- statuscolumn
set.relativenumber = true
set.statuscolumn = "%l %s %r "

-- keymap
map('i', '{<cr>', '{<cr>}<esc>kA<cr>', {
    noremap = true,
    silent = true,
    desc = 'Auto-place closing curly brackets and place cursor between brackets upon inserting { and then <cr>'
}
)

map('n', '<leader>o', 'o<esc>', {
    noremap = true,
    silent = true,
    desc = 'Place a new line under cursor while remaining in normal mode'
}
)

map('n', '<leader>f', vim.diagnostic.open_float, {
    noremap = true,
    silent = true,
    desc = "Show diagnostic for current line",
}
)

map('n', 'gd', vim.lsp.buf.definition, {
    noremap = true,
    silent = true,
    desc = "Go to declaration of element under cursor"
}
)

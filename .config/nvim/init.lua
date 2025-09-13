-- VIM to LUA command: vim.cmd([COMMAND GOES HERE])
-- lazy
require("config.lazy")
-- useful aliases
local map = vim.keymap.set
local set = vim.opt

vim.g.mapleader = ' '       -- use SPACEBAR as leader
set.number = true           -- show line numbers

set.tabstop = 4             -- 4 spaces tab
set.shiftwidth = 4          -- 4 spaces indentation
set.expandtab = true        -- use spaces when tabbing

-- statuscolumn
set.relativenumber = true
set.statuscolumn = "%l %s %r "

-- keymap
map('i', '{<cr>', '{<cr>}<esc>kA<cr><Tab>', {
    noremap = true,
    silent = true,
    desc = 'Auto-indent and place closing curly brackets upon inserting { and then <cr>'
}
)

map('n', '<leader>o', 'o<esc>', {
    noremap = true,
    silent = true,
    desc = 'Place a new line under cursor while remaining in normal mode'
}
)

-- VIM to LUA command: vim.cmd([COMMAND GOES HERE])

-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

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

-- setup lazy.nvim
require("lazy").setup({
  spec = {
    -- add your plugins here
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

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

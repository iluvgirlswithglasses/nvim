require "nvchad.options"
local o = vim.o

-- indenting
o.autoindent = true
o.expandtab = true
o.shiftwidth = 4
o.softtabstop = 4
o.tabstop = 4

-- display
o.cursorline = true
o.laststatus = 3
o.list = true
o.numberwidth = 2
o.ruler = false
o.showmode = false
o.termguicolors = true
o.wrap = false

-- line numbers
o.number = true

-- search
o.ignorecase = true
o.smartcase = true

-- splits
o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true

-- path
vim.opt.path:append "**"

-- behaviour
vim.g.clipboard = {
  name = "OSC 52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  paste = {
    ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
    ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
  },
}
o.clipboard = "unnamedplus"
o.mouse = "a"
o.scrolloff = 8
o.shell = "fish"
o.timeoutlen = 400
o.undofile = true
o.updatetime = 250

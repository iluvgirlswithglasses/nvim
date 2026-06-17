-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "decay",

  -- hl_override = {
  --   Comment = { italic = true },
  --   ["@comment"] = { italic = true },
  -- },
}

M.ui = {
  statusline = {
    modules = {
      cursor = function()
        local utils = require "nvchad.stl.utils"
        local stl_config = require("nvconfig").ui.statusline
        local sep_style = stl_config.separator_style
        local separators = (type(sep_style) == "table" and sep_style) or utils.separators[sep_style]
        local sep_l = separators["left"]

        local cur = vim.fn.line "."
        local total = vim.fn.line "$"
        local pct = math.floor(cur / total * 100)
        local col = vim.fn.virtcol "."

        return "%#St_pos_sep#" .. sep_l .. "%#St_pos_icon# %#St_pos_text# " .. pct .. "%%/" .. col .. " "
      end,
    },
  },
}

M.term = {
  sizes = { sp = 0.4 },
}

-- M.nvdash = { load_on_startup = true }

return M

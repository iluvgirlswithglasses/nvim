-------------------------------------- commands ------------------------------------------
local new_cmd = vim.api.nvim_create_user_command

new_cmd("NvChadUpdate", function()
  require "nvchad.updater"()
end, {})

--------------------------------- toggle auto completion ---------------------------------
local iluv_cmp_enabled = true
new_cmd("CmpToggle", function()
  if iluv_cmp_enabled then
    iluv_cmp_enabled = false
    require('cmp').setup.buffer { enabled = false }
  else
    iluv_cmp_enabled = true
    require('cmp').setup.buffer { enabled = true }
  end
end, {})

-------------------------------- toggle virtual diagnosis --------------------------------
local iluv_virtext_enabled = true
new_cmd("VirtextToggle", function()
  if iluv_virtext_enabled then
    iluv_virtext_enabled = false
    vim.diagnostic.config { virtual_text = false }
  else
    iluv_virtext_enabled = true
    vim.diagnostic.config { virtual_text = true }
  end
end, {})


require("t0astm.set")
require("t0astm.remap")
--[[
local ag = vim.api.nvim_create_augroup
local au = vim.api.nvim_create_autocmd

local disable_node_modules_eslint_group = ag("DisableNodeModulesEslint", { clear = true })

au({ "BufNewFile", "BufRead" }, {
  pattern = { "**/node_modules/**", "node_modules", "/node_modules/*" },
  callback = function ()
   vim.lsp.buf.disable(0)
  end,
  group = disable_node_modules_eslint_group,
})
]]--

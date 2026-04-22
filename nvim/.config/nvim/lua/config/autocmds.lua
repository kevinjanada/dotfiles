-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- vim.filetype.add({
--   extension = { templ = "templ" },
-- })
--
-- vim.api.nvim_create_autocmd({ "FileType" }, {
--   pattern = { "templ" },
--   callback = function()
--     ---@diagnostic disable-next-line: inject-field
--     vim.b.autoformat = false
--   end,
-- })

vim.filetype.add({
  pattern = {
    -- [".*%.blade%.php"] = "blade",
    [".*%.blade%.php"] = "php",
  },
})

-- Set tab settings specifically for Python files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gd", "gdscript", "gdscript3" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

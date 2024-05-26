-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.api.nvim_set_keymap

if vim.g.vscode then
  local function call(action)
    return (":lua require('vscode-neovim').call('%s')<CR>"):format(action)
  end

  map("n", "<Leader>vv", call("workbench.action.toggleSidebarVisibility"), { silent = true })
  map("n", "<Leader>ve", call("workbench.view.explorer"), { silent = true })
  map("n", "<Leader>vd", call("workbench.view.debug"), { silent = true })
  map("n", "<Leader>vg", call("workbench.view.scm"), { silent = true })
  map("n", "<Leader>vf", call("workbench.view.search"), { silent = true })
  map("n", "<Leader>vx", call("workbench.view.extensions"), { silent = true })
end

-- smart-splits.nvim
vim.keymap.set("n", "<A-h>", require("smart-splits").resize_left)
vim.keymap.set("n", "<A-j>", require("smart-splits").resize_down)
vim.keymap.set("n", "<A-k>", require("smart-splits").resize_up)
vim.keymap.set("n", "<A-l>", require("smart-splits").resize_right)
vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
vim.keymap.set("n", "<C-\\>", require("smart-splits").move_cursor_previous)
vim.keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left)
vim.keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down)
vim.keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up)
vim.keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right)

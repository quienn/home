vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = 'a'
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.number = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.signcolumn = 'yes'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.cursorline = true

vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

if not vim.g.vscode then return end

local function clone_paq()
   local path = vim.fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"
   local is_installed = vim.fn.empty(vim.fn.glob(path)) == 0
   if not is_installed then
      vim.fn.system { "git", "clone", "--depth=1", "https://github.com/savq/paq-nvim.git", path }
      return true
   end
end

local function bootstrap(packages)
   local first_install = clone_paq()
   vim.cmd.packadd("paq-nvim")
   local paq = require("paq")
   if first_install then
      vim.notify("Installing plugins... If prompted, hit Enter to continue.")
   end

   paq(packages)
   paq.install()
end

bootstrap {
   "savq/paq-nvim",
   "vscode-neovim/vscode-multi-cursor.nvim",
   "echasnovski/mini.surround",
   "echasnovski/mini.comment",
   "echasnovski/mini.move",
}

require("vscode-multi-cursor").setup()
require("mini.move").setup()
require("mini.surround").setup()
require("mini.comment").setup()

local function call(name)
   return ("<cmd>lua require('vscode').call('%s')<CR>"):format(name)
end

vim.keymap.set("n", "=", call("editor.action.formatDocument"), { noremap = true })
vim.keymap.set("n", "<leader>p", call("workbench.action.showCommands"), { noremap = true })
vim.keymap.set("n", "<leader>b", call("workbench.action.toggleSidebarVisibility"), { noremap = true })

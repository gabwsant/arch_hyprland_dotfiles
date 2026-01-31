-- ==========================================
-- 1. Instalação Automática do Lazy.nvim
-- ==========================================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- a branch estável mais recente
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ==========================================
-- 2. Lista de Plugins (Atualizada)
-- ==========================================
require("lazy").setup({
  -- Tema One Dark Pro (Estilo VS Code)
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Carrega primeiro
    config = function()
      require("onedarkpro").setup({
        options = {
          transparency = true, -- Usa o fundo do Kitty/Terminal
        }
      })
      vim.cmd("colorscheme onedark")
    end,
  },

  -- (Seus outros plugins futuros virão aqui)
})

-- ==========================================
-- 3. Configurações Básicas (O que já tínhamos)
-- ==========================================
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.clipboard = "unnamedplus"

-- ==========================================
-- 4. Atalhos (Keymaps)
-- ==========================================
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Sair do modo Insert' })
vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Salvar arquivo' })
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', { desc = 'Limpar busca' })

-- Navegação entre janelas
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')

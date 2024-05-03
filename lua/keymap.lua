local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- 文件资源器
vim.keymap.set('n', '<A-e>', ':NvimTreeToggle<CR>', opts)

-- 缓冲区
vim.keymap.set("n", "<A-h>", "<C-w>h", opt)
vim.keymap.set("n", "<A-j>", "<C-w>j", opt)
vim.keymap.set("n", "<A-k>", "<C-w>k", opt)
vim.keymap.set("n", "<A-l>", "<C-w>l", opt)
-- 标签页
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
vim.keymap.set("i", "<C-h>", "<Esc>:BufferLineCyclePrev<CR>", opt)
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
vim.keymap.set("i", "<C-l>", "<Esc>:BufferLineCycleNext<CR>", opt)

vim.keymap.set("n", "<C-F4>", ":BufDel<CR>" ,opt)
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", opt)

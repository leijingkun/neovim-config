-- https://neovim.io/doc/user/intro.html#intro
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }
-- 终端
vim.keymap.set('t', '<C-q>', '<C-\\><C-n>', opts)
-- 文件资源器
vim.keymap.set('n', '<A-e>', ':NvimTreeToggle<CR>', opts)
-- 缓冲区
vim.keymap.set("n", "<A-h>", "<C-w>h", opt)
vim.keymap.set("n", "<A-j>", "<C-w>j", opt)
vim.keymap.set("n", "<A-k>", "<C-w>k", opt)
vim.keymap.set("n", "<A-l>", "<C-w>l", opt)
-- 标签页
vim.keymap.set("n", "<C-a>", "ggVG<CR>", opt)
vim.keymap.set("v", "<C-c>", "y", opt)
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
vim.keymap.set("i", "<C-h>", "<Esc>:BufferLineCyclePrev<CR>", opt)
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
vim.keymap.set("i", "<C-l>", "<Esc>:BufferLineCycleNext<CR>", opt)

vim.keymap.set("n", "<C-F4>", ":BufDel<CR>" ,opt)
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", opt)
vim.keymap.set("n", "<C-s>", ":w<CR>", opt)

vim.keymap.set("n", "<A-Down>", ":t.<CR>", opt)
vim.keymap.set("n", "<A-Up>", ":t-1<CR>", opt)
vim.keymap.set("i", "<A-Down>", "<ESC>:t.<CR>", opt)
vim.keymap.set("i", "<A-Up>", "<ESC>:t-1<CR>", opt)
-- 清除关键字高亮
vim.keymap.set("n", "\\", ":nohl<CR>", opt)

-- 终端
vim.keymap.set("n", "<C-\\>", ":terminal<CR>", opt)

-- telescopt
-- 查找文件
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- 全局搜索
vim.keymap.set("n", "<C-f>", ":Telescope live_grep<CR>", opt)


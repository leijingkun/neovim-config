-- 设置编码
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"

-- 联通系统剪切板
vim.o.clipboard = "unnamed"
-- 缩进=4
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
-- << >> 缩进移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- 禁用un~文件
vim.o.undofile = false

-- 设置行号
vim.wo.number = true

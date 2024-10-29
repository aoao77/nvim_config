vim.g.mapleader = ","

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<leader>f", ":bnext<CR>")
keymap.set("n", "<leader>b", ":bprevious<CR>")
keymap.set("n", "<leader>d", ":bdelete <Space><CR>")

-- 光标跳转
keymap.set("i", "<leader>l", "<ESC>la")
keymap.set("i", "<leader>e", "<ESC>$a")
keymap.set("i", "<leader>s", "<ESC>^i")

-- 缩进
keymap.set("i", "<leader>=", "<ESC>gg=Gi")

-- 撤销
keymap.set("i", "<leader>r", "<ESC>ui")
-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")

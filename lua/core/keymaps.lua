vim.g.mapleader = " "
local keymap = vim.keymap

--退出插入模式改为jk
keymap.set("i", "jk", "<ESC>")

--单行或多行移动
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- keymap.set("n", "1", "$"):

-- 增加窗口
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

--取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

--nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


-- 切换buffer
keymap.set("n", "<A-j>", ":bnext<CR>")
keymap.set("n", "<A-k>", ":bprevious<CR>")

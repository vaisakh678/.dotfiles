vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

keymap.set("n", "x", '"_x') -- dosent copy the deleted chaaracter into the register.

-- disenabling remaps
keymap.set("n", "<Space>", "<NOP>")
keymap.set("n", "s", "<NOP>")

-- remaps for windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically.
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally.
keymap.set("n", "<leader>se", "<C-w>=") -- split window equally.
keymap.set("n", "<leader>sx", ":close<CR>") -- close current window.

-- window navigation
keymap.set("n", "<leader>h", "<C-W>h") -- move cursor to left window.
keymap.set("n", "<leader>l", "<C-W>l") -- move cursor to right window.
keymap.set("n", "<leader>k", "<C-W>k") -- move cursor to down window.
keymap.set("n", "<leader>j", "<C-W>j") -- move cursor to top window.

-- remaps for tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- split window vertically.
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- split window vertically.
keymap.set("n", "<leader>tn", ":tabn<CR>") -- split window vertically.
keymap.set("n", "<leader>tp", ":tabp<CR>") -- split window vertically.

-- stay in indent mode
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- move text up and down -- not working.
keymap.set("v", "<A-j>", ":m .+1<CR>==")
keymap.set("v", "<A-k>", ":m .-1<CR>==")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

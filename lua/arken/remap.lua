vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.ftplugin_sql_omni_key = "<C-p>"

vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

vim.keymap.set("i", "<C-c>", "<Esc>")

-- move code around (cool)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- center screen after operations
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- ctrl+v pastes from my system clipboard
vim.keymap.set({ "n", "v" }, "<C-b>", "<C-v>")

-- tmux conf
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")

-- some go keybinds
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>") -- i stole this from prime
vim.keymap.set("n", "<leader>ei", "ddkIif <Esc>A; err != nil {<Esc>")

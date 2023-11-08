vk = vim.keymap

vim.g.mapleader = " "
vk.set("n", "<leader>pv", vim.cmd.Ex)

vk.set("v", "J", ":m '>+1<CR>gv=gv")
vk.set("v", "K", ":m '<-2<CR>gv=gv")

vk.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vk.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

vk.set("t", "<Esc>", "<C-\\><C-n>")

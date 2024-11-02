local vmap = vim.keymap

-- Open explorer
vmap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move in Visual mode with ctrl+j and ctrl+k
vmap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vmap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- Various movement improvements
vmap.set("n", "J", "mzJ`z")
vmap.set("n", "<C-d>", "<C-d>zz")
vmap.set("n", "<C-u>", "<C-u>zz")
vmap.set("n", "n", "nzzzv")
vmap.set("n", "N", "Nzzzv")

-- Keep current yank in buffer
vmap.set("x", "<leader>p", "\"_dP")

-- Ignore capital Q
vmap.set("n", "Q", "<nop>")

-- Easy project switch with tmux
vmap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionaizer<CR>")

-- Format with space+f
vmap.set("n", "<leader-f>", function ()
  vim.lsp.buf.format()
end)

-- Quickfix navigation
vmap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vmap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vmap.set("n", "<leader>j", "<cmd>cnext<CR>zz")
vmap.set("n", "<leader>k", "<cmd>cprev<CR>zz")

-- Easy find and replace
vmap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Escape with jj
vmap.set("i", "jj", "<Esc>")

local builtin = require('telescope.builtin')
local vmap = vim.keymap

vmap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
vmap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })
vmap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

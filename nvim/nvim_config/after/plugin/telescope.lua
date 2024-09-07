local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pg', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

local telescope = require('telescope')
telescope.setup({
    defaults = {
        border = {
            prompt = { 1, 1, 1, 1 },
            results = { 1, 1, 1, 1 },
            preview = { 1, 1, 1, 1 },
        },
        borderchars = {
            prompt = {'─', '│', '─', '│', '┌', '┐', '┘', '└'},
            results = {'─', '│', '─', '│', '┌', '┐', '┘', '└'},
            preview = {'─', '│', '─', '│', '┌', '┐', '┘', '└'},
        }
    },
    extensions = {
      ['ui-select'] = {
        require('telescope.themes').get_dropdown(),
      },
    },
})

telescope.load_extension('fzf')
telescope.load_extension('ui-select')



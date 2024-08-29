local Plug = vim.fn['plug#']

--   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
-- You can specify a custom plugin directory by passing it as the argument
--   - e.g. `call plug#begin('~/.vim/plugged')`
--   - Avoid using standard Vim directory names like 'plugin'
vim.call("plug#begin")

Plug('Shadorain/shadotheme')
Plug('junegunn/fzf.vim')

-- Python
Plug('numirias/semshi', { ['do'] = ':UpdateRemotePlugins' })

-- Autocompletion
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')

-- For vsnip users.
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/vim-vsnip')
-- /Autocompletion

vim.call("plug#end")


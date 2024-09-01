return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- File fuzzy finder/grep
    use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.8',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
      'nvim-telescope/telescope-fzf-native.nvim',
      run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
    }

    -- Generic syntax highlighter, might want to override with some specific ones later
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
 
    -- LSP/Autocompletion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    -- /LSP/Autocompletion
    
    -- Python
    use { 'numirias/semshi', run = ':UpdateRemotePlugins' }
    
    -- Colorschemes
    use 'Shadorain/shadotheme'

end)

return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    main = 'nvim-treesitter.configs',
    opts = {
      ensure_installed = {
          'python',
          'go',
          'cpp',
          'dockerfile',
          'bash',
          'diff',
          'html',
          'css',
          'javascript',
          'lua',
          'luadoc',
          'markdown',
          'markdown_inline',
          'query',
          'vim',
          'vimdoc',
      },
      sync_install = false,
      auto_install = true,
      ignore_install = {},
      highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
      },
    },
}

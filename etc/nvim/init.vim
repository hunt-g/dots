set nocompatible

call plug#begin()
   Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}   
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug 'neovim/nvim-lspconfig'
   Plug 'shaunsingh/nord.nvim'
call plug#end()

" Example config in Vim-Script
let g:nord_contrast = v:true
let g:nord_borders = v:false
let g:nord_disable_background = v:true
let g:nord_italic = v:false

colorscheme nord


lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    --disable = {},  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF



. "$XDG_CONFIG_HOME/nvim/statusline.vim"
hi bl ctermfg=8
hi gr ctermfg=7
set laststatus=0
set rulerformat=%30(%=%#bl#%l,%c\ \ %#gr#%t%)



set tabstop=3
set shiftwidth=3
set expandtab


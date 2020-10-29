scriptencoding utf-8

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
Plugin 'VundleVim/Vundle.vim'
"
" My Bundles here:
"
" original repos on github
"Plugin 'vim-syntastic/syntastic' "c++ syntax checks
Plugin 'SirVer/ultisnips' "use snippets
Plugin 'rhysd/vim-clang-format' "use clang-format within vim
Plugin 'octol/vim-cpp-enhanced-highlight' "up-to-date cpp highlighting
Plugin 'ervandew/supertab' "enhanced tab usage
Plugin 'morhetz/gruvbox' "colorscheme
Plugin 'jiangmiao/auto-pairs' "auto-close braces etc
Plugin 'kahnon/vim-snippets' "Stefans snippets

"unused for now
"Plugn 'Valloric/YouCompleteMe' "do-all programming plugin, complicated installation

call vundle#end()
filetype plugin indent on     " required!

set shiftwidth=2
set softtabstop=2
set number

"for Valloric/YouCompleteMe
"let g:ycm_confirm_extra_conf = 0 
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:ycm_server_log_level = "debug"
" ycm python settings
"let g:ycm_pyhton_path = 'python'

"for octol/vim-cpp-enhanced-highlight
"let g:clang_c_options = '-std=gnu11'
"let g:clang_cpp_options = '-std=c++17 -stdlib=libc++'
let g:clang_cpp_options = '-std=c++2a -fconcepts -pedantic-error'

" for ervandew/supertab
let g:SuperTabDefaultCompletionType = '<C-n>'

" for SirVer/ultisnips
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

"for vim-syntastic/syntastic
"recommended settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_checkers = ['gcc'] "specify checker to use
"let g:syntastic_cpp_compiler_options = "-std=c++2a -fconcepts" "use c++20 for cpp

"for jiangmiao/auto-pairs

"remember last position in a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

syntax on
set t_Co=256
set background=dark
colorscheme gruvbox
set hlsearch

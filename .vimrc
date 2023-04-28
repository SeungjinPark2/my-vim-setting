call plug#begin()
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'

" https://github.com/neoclide/coc.nvim auto completion for js, ts
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" https://github.com/sheerun/vim-polyglot syntax highlight for many languages
Plug 'sheerun/vimrc'
" Plug 'sheerun/vim-polyglot'

" https://github.com/iamcco/markdown-preview.nvim 
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" https://github.com/mg979/vim-visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" https://github.com/tomlion/vim-solidity
" Plug 'tomlion/vim-solidity'

" https://github.com/kburdett/vim-nuuid
Plug 'kburdett/vim-nuuid'

call plug#end()

" using spaces as indent, anything.
" Check this https://vi.stackexchange.com/questions/4141/how-to-indent-as-spaces-instead-of-tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set wrap
set shiftround
set number relativenumber " hybrid relative number mode

" NERDTree toggle setup
nmap <F6> :NERDTreeToggle<CR>

"{{ Clipboard support using xclip (xsel has a bug: https://bugs.chromium.org/p/chromium/issues/detail?id=515401)
"비주얼블럭의 내용을 클립보드로 붙여넣기
vmap <C-c> y:call system("xclip -selection clipboard -i", getreg("\""))<CR>

"클립보드의 내용을 vim으로 붙여넣기
" vmap <C-b> :call setreg("\"",system("xclip -selection clipboard -o"))<CR>p
imap <C-b> <ESC>:call setreg("\"",system("xclip -selection clipboard -o"))<CR>pa
"}}

" uuidgen
map <C-i> <Plug>Nuuid

" flow vim 설정법
" https://vimawesome.com/plugin/coc-flow coc-flow 설치하되 CocConfig 에서 javascript.validate.enable 를 false 로 셋팅해야함.

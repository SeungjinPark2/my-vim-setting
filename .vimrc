call plug#begin()
" Plug 'preservim/nerdtree'

Plug 'neoclide/coc.nvim'

" Plug 'sheerun/vimrc'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'kburdett/vim-nuuid'

Plug 'rhysd/rust-doc.vim'

" Plug 'Shougo/unite.vim'

Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'
call plug#end()

" using spaces as indent, anything.
" Check this https://vi.stackexchange.com/questions/4141/how-to-indent-as-spaces-instead-of-tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set expandtab
set wrap
set shiftround
set number relativenumber " hybrid relative number mode

" NERDTree toggle setup
nmap <F6> :GFiles<CR>
nmap <F7> :Lexplore<CR>

" Coc related mappings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" use <c-space> for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
" Use <C-@> on vim
inoremap <silent><expr> <c-@> coc#refresh()
" Enter to execute auto import
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" add below to CocConfig
"javascript.suggest.autoImports": true, 
"typescript.suggest.autoImports": true

" rust_doc view using Unite map to K
let g:rust_doc#define_map_K = 0
augroup vimrc-rust
    autocmd!
    autocmd FileType rust nnoremap <buffer><silent>K :<C-u>Unite rust/doc:cursor -no-empty -immediately<CR>
    autocmd FileType rust vnoremap <buffer><silent>K :Unite rust/doc:visual -no-empty -immediately<CR>
augroup END

"{{ Clipboard support using xclip (xsel has a bug: https://bugs.chromium.org/p/chromium/issues/detail?id=515401)
"비주얼블럭의 내용을 클립보드로 붙여넣기
vmap <C-c> y:call system("xclip -selection clipboard -i", getreg("\""))<CR>

"클립보드의 내용을 vim으로 붙여넣기
" vmap <C-b> :call setreg("\"",system("xclip -selection clipboard -o"))<CR>p
imap <C-b> <ESC>:call setreg("\"",system("xclip -selection clipboard -o"))<CR>pa
"}}

" uuidgen
" map <C-i> <Plug>Nuuid

" flow vim 설정법
" https://vimawesome.com/plugin/coc-flow coc-flow 설치하되 CocConfig 에서 javascript.validate.enable 를 false 로 셋팅해야함.

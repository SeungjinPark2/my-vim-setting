# ppiippp-vim-setting

coc.nvim install 후에 ~/.vim/plugged/coc.nvim 이동 해서 yarn install 하기 \
:CocInstall coc-json coc-tsserver coc-flow \
Plug 'sheerun/vim-polyglot' 이건 하이라이트인데, 설치해도 별로 바뀌는게 없음. 걍 빼도됨.

# 자주쓰는 키
## normal mode
(4h 이런식으로 4칸씩 이동가능)
* h: left
* j: down
* k: up
* l: righ

(e, w, b 는 대문자로 입력시 단어단위가 아닌, 공백을 기준으로 뛰어넘음)
* e: 단어 끝으로 이동
* w: 다음 단어의 시작으로 이동
* b: 단어 처음으로 이동

* zz: 커서를 수직중앙으로 놓음
* gd: 정의부분으로 이동
* \#: find
    * n: 다음 선언으로 이동
    * shift-n: 이전 선언으로 이동

* dd: 라인 제거 및 복사
* yy: 라인 복사
* p: 붙여넣기

# link
- 마크 사용법: https://vim.fandom.com/wiki/Using_marks
- 내가 적는것 보다 이거 보는게 낫겠네: https://web.stanford.edu/class/cs107/resources/vim.html

# my-vim-setting

## coc-tsserver tsx 인식 문제
tsx 나 tsx 를 인식하지 못하는 경우가 있는데 이럴 때에는 "tsserver.useLocalTsdk": true 옵션을 coc-settings.json 에 추가하라 \
coc 는 기본적으로 자기 자신의 typescript 버전을 이용하곤 하는데 project 의 ts 를 사용하는 것이 올바름. \
관련 이슈: https://github.com/neoclide/coc-tsserver/issues/436

## short cuts
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

* gt: tab 이동
* gT: prev tab 이동

* ctrl + d / u half page 위아래 이동

## fugitive
* Gdiffsplit - git diff split 화면으로 보기
   * do - diff 를 stage
   * dp - unstaged diff 를 drop

## wsl 에서 vim 사용시 ctrl + v 커맨드 충돌
windows terminal 에서 vim 을 설치할 시 복붙을 지원함 (mac 은 macvim 을 따로 설치하라던데..) \
그래서 multi line visual mode 인 기존 커맨드가 동작안함 \
알아보니 ctrl q 으로 같은 동작을 할 수 있더라.

# link
- 마크 사용법: https://vim.fandom.com/wiki/Using_marks
- 내가 적는것 보다 이거 보는게 낫겠네: https://web.stanford.edu/class/cs107/resources/vim.html
- https://learnbyexample.github.io/vim_reference/cover.html
- https://learnvimscriptthehardway.stevelosh.com/preface.html

"设置mapleader
let mapleader="'"
"支持本地读取.vimrc
set exrc
set secure
"非兼容模式
set nocp
"底部标尺
set ru
"搜索时高亮显示结果
set hls
"输入搜索命令时，显示目前输入的模式的匹配位置
set is
"显示行号
set number
"开启光标下划线
set cursorline
"使用:e命令的时候 可选项预览
set wildmenu
"文件默认编码
set enc=utf-8
"文件保存时使用的编码
"fileencoding=utf-8
"打开文件进行解码的猜测列表，优先以utf-8打开
set fileencodings=utf-8,gbk
"termencoding
set termencoding=utf-8
"文件默认格式unix
set ff=unix
"去除vim ^M符号
set fileformats=unix,dos

"缩进为4个空格宽度
set tabstop=2
"自动缩进使用的空格数
set shiftwidth=2
"编辑插入tab时，把tab算作的空格数
set softtabstop=2

"缩进使用空格
set expandtab
"自动缩进
set autoindent
"鼠标捕捉
set mouse=v
"打开语法高亮
syntax on
set background=dark

set comments=sl:/*,mb:*,ex:*/
"映射F5键为空格替换
map <F5> :%s/\s\+$//cg <CR>
"映射F6键为格式化语n
map <F6> :call FixStyle() <CR>
"映射F7键为格式化语句
map <F7> :call g:Jsbeautify() <CR>
"映射<F10>键为去掉编译起中的M
map <F10> :%s/\r//<CR>
"设置字典
autocmd FileType javascript set dictionary=~/.vim/dict/javascript.dict
"默认配色为darkblue
"color darkbluefix
"显示标签栏 0: 从不 1: 大于1个时显示 2: 总是
set showtabline=2

" 重新载入配置
map <leader>s :source ~/.vimrc<CR>

"CtrlP插件设置
let g:ctrlp_map = '<leader>p'
let g:ctrlp_by_filename = 1 
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]((\.(git|hg|svn))|(node_modules))$',
\ 'file': '\v\.(exe|so|dll|swp|zip)$',
\ }

" visual模式修改缩进时不退出该模式
vnoremap < <gv
vnoremap > >gv

"映射Ctrl+F12键为行号的开关
nmap <C-F12> :set number!<CR>

nmap <C-N> :tabnext<CR>
nmap <C-P> :tabprevious<CR>

"nnoremap <C-c> :update<CR>
"cnoremap <C-c> <Esc>:update<CR>
"inoremap <C-c> <Esc>:update<CR>

" insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <DELETE>

" command line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>

" 打开php折叠
let php_folding = 1
" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

filetype on
au BufNewFile,BufRead *.as set filetype=actionscript
" Multiple filetype for freemarker
au BufNewFile,BufRead *.ftl set filetype=ftl.html
au BufNewFile,BufRead *.ejs set filetype=html
" set vue
au BufNewFile,BufRead *.vue setf javascript

au BufReadCmd *.jar,*.xpi,*.egg call zip#Browse(expand("<amatch>"))
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set foldmethod=marker
autocmd FileType python filetype plugin indent on
autocmd FileType python setlocal et sta sw=4 sts=4

" 设置eslint
"   let eslintpath = findfile('.eslintrc', '.;')
"   if eslintpath == '' || (eslintpath == ($HOME . "/.eslintrc"))
"       let eslintpath = findfile('.eslintrc.js', '.;')
"       " 在eslintrc当前文件夹下找eslint
"       let local_eslint = substitute(eslintpath, ".eslintrc.js", "", "") . "node_modules" . '/.bin/eslint'
"   else
"       " 在eslintrc当前文件夹下找eslint
"       let local_eslint = substitute(eslintpath, ".eslintrc", "", "") . "node_modules" . '/.bin/eslint'
"   endif
"autocmd FileType javascript let b:ale_linters = ['eslint']
" 必须加上'./'前缀才能执行
" if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = substitute(system("which eslint"), '\n', '', '')
" endif
"if executable(local_eslint)
"let g:syntastic_javascript_eslint_exec = local_eslint
" endif
" In normal mode, eslint fix syntax
" nnoremap <leader>e :exec '!'. local_eslint . ' --fix ' . ' %'<CR>


" 设置javascriptlint
"if eslintpath != ''
    "autocmd FileType javascript let &makeprg="eslint\ --config\ eslintpath\ %"
"else
"autocmd FileType javascript set makeprg=jshint\ --config\ ~/.jshintrc\ %
"endif
"autocmd FileType javascript set errorformat=%f:\ line\ %l\\,\ col\ %c\\,\ %m
"autocmd FileType javascript inoremap <silent> <F9> <C-O>:make<CR>
"autocmd FileType javascript map <silent> <F9> :make<CR>

let g:jsx_ext_required = 0

" 设置csslint
autocmd FileType css set makeprg=csslint\ %
autocmd FileType css set errorformat=%f(%l)(%c):\ %m
autocmd FileType css inoremap <silent> <F8> <C-O>:make<CR>
autocmd FileType css map <silent> <F8> :make<CR>


" vimwiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{
\'path': '~/Dropbox/document/vimwiki/',
\'path_html': '~/Dropbox/document/vimwiki/html/',
\'html_header': '~/Dropbox/document/vimwiki/template/header.tpl',
\}]

" vimrc 相关

nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>ev :tabe  $MYVIMRC<CR>

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }


"""""""""""""""""""""""""""""
" TagList setting
"""""""""""""""""""""""""""""
"Exuberant ctags程序的位置
let Tlist_Inc_Winwidth=0
"在右侧窗口打开
let Tlist_Use_Right_Window=1
"只显示当前文件的tag
let Tlist_File_Fold_Auto_Close=1
"如果Taglist是最后一个窗口则退出vim
let Tlist_Exit_OnlyWindow = 1

"""""""""""""""""""""""""""""
" typescript
"""""""""""""""""""""""""""""
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd FileType typescript :set makeprg=tsc
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

""""""""""""""""""""""""""""""
" BufExplore settingr
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.

""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
"let g:winManagerWindowLayout = \""BufExplorer,FileExplorer|TagList"
let g:winManagerWindowLayout = "FileExplorer"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<CR>
nmap <C-W><C-B> :BottomExplorerWindow<CR>
nmap <silent> <leader>wm :WMToggle<CR>

"filetype
filetype plugin on

"copy line
function! CopyLine() range
    let beg_line = line("'<")
    let end_line = line("'>")
    exec '!sed -n "'. beg_line. ','. end_line. 'p" % | pbcopy'
endfunction
vnoremap <leader>c :call CopyLine()<CR>

" In visual mode, git blame the selection
function! GitBlame() range
" look up function-range-example for more information
    let beg_line = line("'<")
    let end_line = line("'>")
    exec '!git blame -L '. beg_line. ','. end_line. ' %'
endfunction
vnoremap <leader>g :call GitBlame()<CR>

" In normal mode, git blame the current line
nnoremap <leader>g :exec '!git blame -L '. line("."). ','. line("."). ' %'<CR>

" emmet
let g:user_emmet_leader_key='<C-y>'

" let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))
" " Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Initialize plugin system
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kshenoy/vim-signature'
Plug 'codota/tabnine-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'majutsushi/tagbar'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'szw/vim-tags'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-easytags'
Plug 'posva/vim-vue'
Plug 'tikhomirov/vim-glsl'
Plug 'leafgarland/typescript-vim'

call plug#end()

map <Leader>n <plug>NERDTreeTabsToggle<CR>
map <Leader>f <plug>NERDTreeTabsFind<CR>
let g:NERDTreeWinSize=40
" tags配置
"set statusline+=%{gutentags#statusline()}
"let g:gutentags_exclude_project_root=['node_modules']
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
" let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
" " 所生成的数据文件的名称 "
" let g:gutentags_ctags_tagfile = '.tags'
" " 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
" let s:vim_tags = expand('~/.cache/tags')
" let g:gutentags_cache_dir = s:vim_tags
" " 检测 ~/.cache/tags 不存在就新建 "
" if !isdirectory(s:vim_tags)
"    silent! call mkdir(s:vim_tags, 'p')
" endif

" easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>easymotion-j
map <Leader>k <Plug>(easymotion-k)



let g:EasyMotion_smartcase = 1
map <leader>h <Plug>(easymotion-linebackward)
map <leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <leader>. <Plug>(easymotion-repeat)

" fzf mapping
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" ale for eslint
let g:ale_linter_aliases = {'vue': ['vue', 'javascript', 'typescript']}
let g:ale_linters = {'vue': ['eslint', 'stylelint']}

colorscheme solarized

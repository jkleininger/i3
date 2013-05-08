set history=1000

set autochdir

syntax on " Enable syntax highlighting
filetype plugin indent on " Enable filetype detection, plugins, and indentation

nnoremap " `

set history=1000

set autochdir

syntax on " Enable syntax highlighting
filetype plugin indent on " Enable filetype detection, plugins, and indentation

nnoremap " `
nnoremap ` '
set hidden " allow hidden buffers
runtime macros/matchit.vim
set wildmenu
set wildmode=list:longest,full

set backupdir=~/.local/share/vim
set directory=~/.local/share/vim
set nobackup
set nowritebackup
set noswapfile

set nocompatible
set relativenumber " Show the line number
set mouse=r " Let the mouse work in the console
set showmatch
set ruler " Always show cursor
set cursorline

" display current mode and partially typed commands
set showmode
set showcmd

" case-insensitive searches, unless caps are involved
set ignorecase
set smartcase

set foldmethod=indent
set foldlevel=99

set shortmess=atI

set autoread

set equalalways

set magic
set so=7

set clipboard=unnamed

" tabs -> spaces
" default 4-space dd
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set shiftround
set cindent
set smartindent
set autoindent

set hlsearch
set incsearch

highlight Pmenu ctermbg=238 gui=bold

" textwidth limits
autocmd BufRead /tmp/mutt-* set tw=72 " mutt limit to 72 characters
"autocmd BufRead *.txt set tw=78 " text files limit to 78 characters

" vertical line at 80th column
"highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
set colorcolumn=80

" java-specific
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1

let mapleader=","
let g:mapleader=","
let g:tex_flavor="pdflatex"
"let g:tex_flavor="latex"

let g:GPGUseAgent=0
let g:GPGPrefArmor=1
let g:GPGDefaultRecipients=["Albert Chang <albert.chang@gmx.com>"]

" NERDTree
map <F2> :silent NERDTreeToggle<CR>
" Toggle relative/absolute numbers
map <F3> :call NumberToggle()<CR>
" Hypergit
"map <F4> :silent ToggleGitMenu<CR>

set pastetoggle=<leader>p

set confirm

" when ~/.vimrc is changed, autoload
autocmd! BufWritePost .vimrc source %

" arduino syntax highlighting
autocmd! BufNewFile,BufRead *.pde,*.ino setlocal ft=arduino

"autocmd! BufNew,BufRead :call UMiniBufExplorer
"let g:miniBufExplorerMoreThanOne=0
"let g:miniBufExplMapWindowNavVim = 1

let g:ConqueTerm_PyVersion = 3
let g:ConqueTerm_FastMode = 0
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_InsertOnEnter = 0
let g:ConqueTerm_CloseOnEnd = 0

" omnicompletion
"set omnifunc=syntaxcomplete#Complete
"set completeopt=menuone,menu,longest,preview
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

"set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" Automatically toggle between relative and absolute numbers
autocmd! InsertEnter * set number
autocmd! InsertLeave * set relativenumber

" autorun files
set autowrite
command! -buffer W make

" indentation & write + load
autocmd! FileType ruby set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=ruby\ %
autocmd! FileType python set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=python\ %
autocmd! FileType perl set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=perl\ %
autocmd! FileType java set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=javac\ %
autocmd! FileType lua set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=lua\ %
autocmd! FileType tex set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=pdflatex\ %
autocmd! FileType c,cpp set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=make
autocmd! FileType sh set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=./%
autocmd! BufNewFile,BufRead PKGBUILD set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=makepkg

" indentation only
" no indentation
autocmd! FileType asciidoc set nocindent noautoindent
" 4-space explicit
autocmd! FileType javascript,arduino,php,html,xhtml,css,xml set shiftwidth=4 softtabstop=4 tabstop=4
" 2-space
autocmd! FileType vhdl set shiftwidth=2 softtabstop=2 tabstop=2
" 8-space

" auto-chmod
autocmd BufWritePost * call NoExtNewFile()

function! NoExtNewFile()
    if getline(1) =~ "^#!.*/bin/"
        if &filetype == ""
            filetype detect
        endif
        silent !chmod a+x <afile>
    endif
endfunction

" http://stackoverflow.com/questions/4016649/vim-word-completion-navigating-with-j-and-k#4016817

" use templates
autocmd! BufNewFile * call LoadTemplate()
" jump between %VAR% placeholders in Insert mode with <Ctrl-p>
inoremap <C-p> <ESC>/%\u.\{-1,}%<cr>c/%/e<cr>

function! LoadTemplate()
    silent! 0r ~/.vim/skel/tmpl.%:e

    " Highlight %VAR% placeholders with the Todo color group
    syn match Todo "%\u\+%" containedIn=ALL
endfunction

function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunction
nnoremap ` '
set hidden " allow hidden buffers
runtime macros/matchit.vim
set wildmenu
set wildmode=list:longest,full

set backupdir=~/.local/share/vim
set directory=~/.local/share/vim
set nobackup
set nowritebackup
set noswapfile

set nocompatible
set relativenumber " Show the line number
set mouse=r " Let the mouse work in the console
set showmatch
set ruler " Always show cursor
set cursorline

" display current mode and partially typed commands
set showmode
set showcmd

" case-insensitive searches, unless caps are involved
set ignorecase
set smartcase

set foldmethod=indent
set foldlevel=99

set shortmess=atI

set autoread

set equalalways

set magic
set so=7

set clipboard=unnamed

" tabs -> spaces
" default 4-space dd
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set shiftround
set cindent
set smartindent
set autoindent

set hlsearch
set incsearch

highlight Pmenu ctermbg=238 gui=bold

" textwidth limits
autocmd BufRead /tmp/mutt-* set tw=72 " mutt limit to 72 characters
"autocmd BufRead *.txt set tw=78 " text files limit to 78 characters

" vertical line at 80th column
"highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
set colorcolumn=80

" java-specific
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1

let mapleader=","
let g:mapleader=","
let g:tex_flavor="pdflatex"
"let g:tex_flavor="latex"

" NERDTree
map <F2> :silent NERDTreeToggle<CR>
" Toggle relative/absolute numbers
map <F3> :call NumberToggle()<CR>
" Hypergit
"map <F4> :silent ToggleGitMenu<CR>

set pastetoggle=<leader>p

set confirm

" when ~/.vimrc is changed, autoload
autocmd! BufWritePost .vimrc source %

" arduino syntax highlighting
autocmd! BufNewFile,BufRead *.pde,*.ino setlocal ft=arduino

"autocmd! BufNew,BufRead :call UMiniBufExplorer
"let g:miniBufExplorerMoreThanOne=0
"let g:miniBufExplMapWindowNavVim = 1

let g:ConqueTerm_PyVersion = 3
let g:ConqueTerm_FastMode = 0
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_InsertOnEnter = 0
let g:ConqueTerm_CloseOnEnd = 0

" omnicompletion
"set omnifunc=syntaxcomplete#Complete
"set completeopt=menuone,menu,longest,preview
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

"set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" Automatically toggle between relative and absolute numbers
autocmd! InsertEnter * set number
autocmd! InsertLeave * set relativenumber

" autorun files
set autowrite
command! -buffer W make

" indentation & write + load
autocmd! FileType ruby set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=ruby\ %
autocmd! FileType python set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=python\ %
autocmd! FileType perl set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=perl\ %
autocmd! FileType java set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=javac\ %
autocmd! FileType lua set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=lua\ %
autocmd! FileType tex set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=pdflatex\ %
autocmd! FileType c,cpp set shiftwidth=4 softtabstop=4 tabstop=4 makeprg=make
autocmd! FileType sh set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=./%
autocmd! BufNewFile,BufRead PKGBUILD set shiftwidth=2 softtabstop=2 tabstop=2 makeprg=makepkg

" indentation only
" no indentation
autocmd! FileType asciidoc set nocindent noautoindent
" 4-space explicit
autocmd! FileType javascript,arduino,php,html,xhtml,css,xml set shiftwidth=4 softtabstop=4 tabstop=4
" 2-space
autocmd! FileType vhdl set shiftwidth=2 softtabstop=2 tabstop=2
" 8-space

" auto-chmod
autocmd BufWritePost * call NoExtNewFile()

function! NoExtNewFile()
    if getline(1) =~ "^#!.*/bin/"
        if &filetype == ""
            filetype detect
        endif
        silent !chmod a+x <afile>
    endif
endfunction

" http://stackoverflow.com/questions/4016649/vim-word-completion-navigating-with-j-and-k#4016817

" use templates
autocmd! BufNewFile * call LoadTemplate()
" jump between %VAR% placeholders in Insert mode with <Ctrl-p>
inoremap <C-p> <ESC>/%\u.\{-1,}%<cr>c/%/e<cr>

function! LoadTemplate()
    silent! 0r ~/.vim/skel/tmpl.%:e

    " Highlight %VAR% placeholders with the Todo color group
    syn match Todo "%\u\+%" containedIn=ALL
endfunction

function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunction
















if has("gui_runnung")
    set guioptions=agiLt
    set t_Co=256
    set guitablabel=%M\ %t
endif




"########## colors ###########################################################

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "nucolors"

hi Nontext                   guifg=#404040
hi Normal                    guifg=#E6E1DC guibg=#151515
hi Cursor                    guibg=#FF8939
hi CursorLine                guibg=#202020
hi LineNr                    guifg=#665544 guibg=#101010
hi Search                    guibg=#5A647E
hi VertSplit                 guifg=#1b1b1b guibg=#1b1b1b
hi Visual                    guibg=#5A647E

" Folds
" line used for closed folds
hi Folded                    guifg=#5A647E guibg=#202020 
hi FoldColumn                guifg=#505050 guibg=#050505

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#A0CF5D 

" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#F6F3E8 guibg=#444444 
" selected item in popup
hi PmenuSel                  guifg=#000000 guibg=#A0CF5D 
" scrollbar in popup
hi PMenuSbar                 guibg=#5A647E 
" thumb of the scrollbar in the popup
hi PMenuThumb                guibg=#AAAAAA 


"rubyComment
hi Comment                   guifg=#809080 
hi Todo                      guifg=#809080 guibg=NONE 

"Invisibles
hi NonText                   guifg=#665544
hi SpecialKey                guifg=#665544

"rubyPseudoVariable
"nil, self, symbols, etc
hi Constant                  guifg=#7DC1CF

"rubyClass, rubyModule, rubyDefine
"def, end, include, etc
hi Define                    guifg=#FFFFB9 gui=bold

"rubyInterpolation
hi Delimiter                 guifg=#B8D68F

"rubyError, rubyInvalidVariable
hi Error                     guifg=#FFFFFF guibg=#990000

"rubyFunction
hi Function                  guifg=#E84F4F gui=bold 

"rubyIdentifier
"@var, @@var, $var, etc
hi Identifier                guifg=#4E9FB1 

"rubyInclude
"include, autoload, extend, load, require
hi Include                   guifg=#E1AA5D gui=bold 

"rubyKeyword, rubyKeywordAsMethod
"alias, undef, super, yield, callcc, caller, lambda, proc
hi Keyword                   guifg=#E1AA5D

" same as define
hi Macro                     guifg=#E1AA5D 

"rubyInteger
hi Number                    guifg=#A0CF5D

" #if, #else, #endif
hi PreCondit                 guifg=#E1AA5D 

" generic preprocessor
hi PreProc                   guifg=#E1AA5D 

"rubyControl, rubyAccess, rubyEval
"case, begin, do, for, if unless, while, until else, etc.
hi Statement                 guifg=#E1AA5D 

"rubyString
hi String                    guifg=#A0CF5D

hi Title                     guifg=#FFFFFF

"rubyConstant
hi Type                      guifg=#E84F4F 

hi DiffAdd                   guifg=#E6E1DC guibg=#144212
hi DiffDelete                guifg=#E6E1DC guibg=#660000

hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag

hi xmlTag                    guifg=#E8BF6A
hi xmlTagName                guifg=#E8BF6A
hi xmlEndTag                 guifg=#E8BF6A

" Status line - changes colors depending on insert mode
" Standard
hi User1          guifg=#E8BF6A   guibg=#202020   gui=bold
hi User2          guifg=#E84F4F   guibg=#202020   gui=bold
hi User3          guifg=#A0CF5D   guibg=#202020   gui=bold
hi User4          guifg=#202020   guibg=#E8BF6A   gui=bold
hi User5          guifg=#909090   guibg=#202020   
hi User6          guifg=#40352D   guibg=#202020   
hi User7          guifg=#202020   guibg=#202020   gui=bold
hi StatusLine     guifg=#E6E1DC   guibg=#202020   gui=bold
hi StatusLineNC   guifg=#606060   guibg=#202020   gui=bold

function! InsertStatuslineColor(mode)

  if a:mode == 'i' " Insert Mode
    hi User4      guifg=#202020   guibg=#7DC1CF

  elseif a:mode == 'r' " Replace Mode
    hi User4      guifg=#202020   guibg=#E84F4F

  else
    hi User4      guifg=#202020   guibg=#E8BF6A

  endif
endfunction

" Call function
au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guifg=#E6E1DC   guibg=#202020
au InsertLeave * hi User4      guifg=#202020   guibg=#E8BF6A

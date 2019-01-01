" be iMproved
set nocompatible

" Vundle setup
" Plugin manager
"
" Brief help:
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-ap prove) removal of unused bundles
" for more details see :h vundle  or https://github.com/gmarik/vundle
    filetype off     " required!
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#rc()
    Plugin 'git://github.com/gmarik/vundle.git'

    " Plugins
    " NOTE: comments after Plugin command are not allowed...
    " Libs
        " For FuzzyFinder
        Plugin 'L9'
        " For Vim Snipmate
        Plugin 'git://github.com/MarcWeber/vim-addon-mw-utils'
        Plugin 'git://github.com/tomtom/tlib_vim'
    " Interface
        " Solarized Colorscheme
        Plugin 'git://github.com/altercation/vim-colors-solarized.git'
        " Status line
        Plugin 'git://github.com/bling/vim-airline.git'
        " A tree explorer plugin
        Plugin 'git://github.com/scrooloose/nerdtree.git'
        " Buffer/file/command/tag/etc explorer with fuzzy matching
        Plugin 'git://github.com/slack/vim-fuzzyfinder.git'
        " TextMate-like snippets
        Plugin 'git://github.com/garbas/vim-snipmate'
        Plugin 'git://github.com/babybeasimple/vim-snippets'
        " Provides easy code commenting
        Plugin 'git://github.com/tomtom/tcomment_vim'
        " Mappings to easily delete, change and add surroundings in pairs
        Plugin 'git://github.com/tpope/vim-surround.git'
        " Automatic closing of quotes, parenthesis, brackets, etc.
        Plugin 'git://github.com/vim-scripts/delimitMate.vim.git'
        " Syntax checking hacks
        Plugin 'git://github.com/scrooloose/syntastic.git'
        " Pairs of handy bracket mappings
        Plugin 'git://github.com/tpope/vim-unimpaired'
        " Enable repeating supported plugin maps with "."
        Plugin 'git://github.com/tpope/vim-repeat'
        " Makes it easy to align regions of text that match a pattern
        Plugin 'git://github.com/godlygeek/tabular'
        " Git wrapper
        Plugin 'git://github.com/tpope/vim-fugitive.git'
        " Fuzzy finder
        Plugin 'kien/ctrlp.vim'
        " Ag integration
        Plugin 'rking/ag.vim'
        " Railscasts color scheme
        Plugin 'jpo/vim-railscasts-theme'
        " Various color schemes
        Plugin 'flazz/vim-colorschemes'
        " Ale plugin for syntax check
        Plugin 'w0rp/ale'
    " CSV
        " CSV support
        " Plugin 'git://github.com/chrisbra/csv.vim.git'
    " HTML
        " Runtime files for Haml and Sass
        Plugin 'git://github.com/tpope/vim-haml.git'
    " CSS
        " CSS3 syntax support
        Plugin 'git://github.com/hail2u/vim-css3-syntax.git'
        " Highlight colors in css files
        Plugin 'git://github.com/ap/vim-css-color.git'
    
    " Ruby/Rails
        " Rails support
        Plugin 'git://github.com/tpope/vim-rails.git'
        " Wisely add "end" in ruby, endfunction/endif/more
        Plugin 'git://github.com/tpope/vim-endwise.git'
    

    filetype plugin indent on     " required!

" Environment
    " Store lots of history entries: :cmdline and search patterns
    set history=1000
    " Backspacing settings
        " start     allow backspacing over the start of insert;
        "           CTRL-W and CTRL-U stop once at the start of insert.
        " indent    allow backspacing over autoindent
        " eol       allow backspacing over line breaks (join lines)
        set backspace=indent,eol,start
    " Backup и swp files
        " Don't create backups
        set nobackup
        " Don't create swap files
        set noswapfile
    " AutoReload .vimrc
    " See http://vimcasts.org/episodes/updating-your-vimrc-file-on-the-fly/
    " Source the vimrc file after saving it
        if has("autocmd")
          autocmd! bufwritepost .vimrc source $MYVIMRC
        endif

let mapleader=","

" Interface
    " Font
    if has('mac')
      set gfn=menlo:h14
    else
      set gfn=mono\ 11
    endif
    " Removes top toolbar
    set guioptions-=T
     " Removes right hand scroll bar
    set guioptions-=r
    " Removes left hand scroll bar
    set go-=L
    " Show line numbers
    set number
    " Show matching brackets
    set showmatch
    " Bracket blinking
    set mat=5
    " Enhance command-line completion
    " Only available when compiled with the +wildmenu feature
        set wildmenu
        " OS X
        set wildignore+=*.DS_Store
        " Version control
        set wildignore+=.hg,.git,.svn
        " Ruby on rails
        set wildignore+=vendor/ruby/*,tmp/*,public/system/*
    " Minimal number of lines to keep above and below the cursor
    " Typewriter mode = keep current line in the center
    " set scrolloff=999
    " Display invisible characters
        set list
        " Show $ at end of line and trailing space as ~
        set lcs=tab:\ \ ,trail:~,extends:>,precedes:<
    " Wrap long lines
    set wrap
    " Don't break words when wrapping
    " Only available when compiled with the +linebreak feature
    set linebreak
    " Show ↪ at the beginning of wrapped lines
    if has("linebreak")
      let &sbr = nr2char(8618).' '
    endif
    " Time to wait after ESC (default causes an annoying delay)
    set timeoutlen=250
    " No beeps, no flashes
    set visualbell
    " Copy indent from current line when starting a new line
    set autoindent
    " Do smart indenting when starting a new line
    " Only available when compiled with the +smartindent feature
    set smartindent
    " Number of spaces to use for each step of (auto)indent
    set shiftwidth=2
    " Use spaces instead of tab
    set expandtab
    " Number of spaces that a tab counts for
    set tabstop=2
    " Last window always has a status line
    set laststatus=2
    " Highlight the screen vertical line of the cursor
    set cursorcolumn

" Search
    " While typing a search command, show pattern matches as it is typed
    " Only available when compiled with the +extra_search feature
    set incsearch
    " When there is a previous search pattern, highlight all its matches
    " Only available when compiled with the +extra_search feature
    set hlsearch
    " Ignore case in search patterns
    set ignorecase
    " Override the 'ignorecase' if the search pattern contains upper case characters
    set smartcase
    " All matches in a line are substituted instead of one
    set gdefault

" File specific
    autocmd BufRead,BufNewFile *.hamlc setf haml
    autocmd BufRead,BufNewFile *.rabl setf ruby
    autocmd BufRead,BufNewFile *.rabl syn keyword rubyRabl node attribute object child collection attributes glue extends
    autocmd BufRead,BufNewFile *.rabl hi def link rubyRabl Function
    autocmd BufRead,BufNewFile *.thor setf ruby
    autocmd filetype javascript set sw=2 ts=2
    autocmd BufRead,BufNewFile *.json setf javascript

" Plugins
    " Solarized
        syntax enable
        " http://stackoverflow.com/questions/7278267/incorrect-colors-with-vim-in-iterm2-using-solarized#comment11144700_7278548
        " let g:solarized_termcolors=16
        set background=dark
        try
            " colorscheme solarized
           colorscheme railscasts
           " colorscheme sexy-railscasts


           " set background=dark
           " colorscheme railscasts
           "
           " highlight clear SignColumn
           " highlight VertSplit    ctermbg=236
           " highlight ColorColumn  ctermbg=237
           " highlight LineNr       ctermbg=236 ctermfg=240
           " highlight CursorLineNr ctermbg=236 ctermfg=240
           " highlight CursorLine   ctermbg=236
           " highlight StatusLineNC ctermbg=238 ctermfg=0
           " highlight StatusLine   ctermbg=240 ctermfg=12
           " highlight IncSearch    ctermbg=3   ctermfg=1
           " highlight Search       ctermbg=1   ctermfg=3
           " highlight Visual       ctermbg=3   ctermfg=0
           " highlight Pmenu        ctermbg=240 ctermfg=12
           " highlight PmenuSel     ctermbg=3   ctermfg=1
           " highlight SpellBad     ctermbg=0   ctermfg=1

        catch /^Vim\%((\a\+)\)\=:E185/
            echo "Solarized theme not found. Run :PluginInstall"
        endtry

        try
            call togglebg#map("<Leader>b")
        catch /^Vim\%((\a\+)\)\=:E117/
            " :(
        endtry
    " Airline
        " Colorscheme
        " let g:airline_theme='solarized'
        " Syntastic integration
        let g:airline#extensions#syntastic#enabled=1
    " Syntastic
        let g:syntastic_javascript_checkers = ['eslint']
    " NERDTree
        noremap <silent> <C-e> :NERDTreeToggle<CR>:silent NERDTreeMirror<CR>
        map <silent> <C-d> :1<CR>X
        " let NERDTreeShowBookmarks=1
        let NERDTreeChDirMode=2
        let NERDTreeQuitOnOpen=1
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=0
        " Disable display of the 'Bookmarks' label and 'Press ? for help' text
        let NERDTreeMinimalUI=1
        " Use arrows instead of + ~ chars when displaying directories
        let NERDTreeDirArrows=1
        " let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'
    " FuzzyFinder
        nmap ,f :FufFileWithCurrentBufferDir<CR>
        nmap ,b :FufBuffer<CR>
        " nmap ,t :FufTaggedFile<CR>
        let g:tlist_coffee_settings = 'coffee;f:function;v:variable'
    " ALE
        let b:ale_linters = ['pyflakes', 'flake8', 'pylint']
        let b:ale_fixers = ['eslint']
        let b:ale_fix_on_save = 1

" Shortcuts
 " Normal mode (Esc) --> jj
 inoremap jj <Esc> """ jj key is <Esc> setting

" Some mess
    set lazyredraw
    set showmode

    set cf  " Enable error files & error jumping.
    set clipboard+=unnamed  " Yanks go on clipboard instead.
    set autowrite  " Writes on make/shell commands
    set ruler  " Ruler on

    " Formatting (some of these are for coding in C and C++)
    set nocp incsearch
    set cinoptions=:0,p0,t0
    set cinwords=if,else,while,do,for,switch,case
    set formatoptions=tcqr
    set cindent

    set wrapscan
    set ch=2

    set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

    set synmaxcol=2048

    set cpoptions+=$

    hi PreProc guifg=red ctermfg=red guibg=grey15

" unhighlight searches on hitting enter
nnoremap <leader><CR> :nohlsearch<cr>

" smart indentation after {
" inoremap {<CR> {<CR>}<Esc>ko

nnoremap <leader><leader> <c-^>


" CtrlP mappings
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|.git|tmp|node_modules'
map <leader>gv :CtrlP app/views<cr>
map <leader>gm :CtrlP app/models<cr>
map <leader>gc :CtrlP app/controllers<cr>
map <leader>gh :CtrlP app/helpers<cr>
map <leader>gl :CtrlP lib<cr>
map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>
map <leader><c-p> :CtrlPTag<cr>
map <leader>gb :Gblame<cr>


" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

imap jk <Esc>
map <leader>w :w <cr>

autocmd FileType go noremap <leader>t :GoTest<cr>
autocmd FileType go noremap <leader>f :GoTestFunc<cr>
autocmd FileType go noremap <leader>c :GoCoverage<cr>
autocmd FileType go noremap <leader>cl :GoCoverageClear<cr>
autocmd FileType go noremap <leader>ct :GoCoverageToggle<cr>
autocmd FileType go noremap <leader>cb :GoCoverageBrowser<cr>
autocmd FileType go noremap <leader>w :GoImports<cr>:w<cr>
autocmd FileType go noremap c <nop>
autocmd FileType go noremap <leader>d :GoDoc<cr>
autocmd FileType go noremap <leader>db :GoDocBrowser<cr>
autocmd FileType go noremap <leader>l :GoLint<cr>
autocmd FileType go noremap <leader>v :GoVet<cr>
autocmd FileType go noremap <leader>i :GoInfo<cr>
autocmd FileType go noremap <leader>e :GoErrCheck<cr>
let g:go_info_mode = 'gocode'
" set omnifunc=syntaxcomplete#Complete

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

let g:deoplete#enable_smart_case = 1
let g:deoplete#sources#syntax#min_keyword_length = 3

" Plugin key-mappings.
inoremap <expr><C-g> deoplete#undo_completion()
inoremap <expr><C-l> deoplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  if pumvisible()
     return deoplete#close_popup()
   else
     return "\<CR>"
   endif
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" leave the preview window always closed
set completeopt-=preview

" close the preview window on leaving the insert mode
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" autocmd FileType go noremap <leader>e :GoDef<cr>

" :GoImplements
" :GoImpl f *Foo io.Writer
" autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>

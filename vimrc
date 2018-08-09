"==========================================================
"
" Bartes's .vimrc
"
" heavily inspired by Psyho, Peepcode screencast, Sickill
" and Derek Wyatt
"
"==========================================================

"----------------------------------------------------------
" Dein
"----------------------------------------------------------
if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/bundles')
  call dein#begin('~/.vim/bundles')

  call dein#add('~/.vim/bundles')
  call dein#add('Shougo/deoplete.nvim')

"----------------------------------------------------------
" PLUGINS
"----------------------------------------------------------
"
" call dein#add('wannesm/rmvim.vim')
 
" ack - use ack to search through files
call dein#add('epmatsw/ag.vim')
 
" javascript indentation in vim sucks
call dein#add('pangloss/vim-javascript')
 
" jasmine plugin
call dein#add('claco/jasmine.vim')
 
" syntax for js§
call dein#add('othree/javascript-libraries-syntax.vim')
 
" CSS
call dein#add('ChrisYip/Better-CSS-Syntax-for-Vim')
 
" Fuzzy file searching
call dein#add('kien/ctrlp.vim')
 call dein#add('tacahiroy/ctrlp-funky')
 call dein#add('d11wtq/ctrlp_bdelete.vim')
 
" NerdCommenter - comment blocks of code
call dein#add('scrooloose/nerdcommenter')
 
" NerdTree - displays a neat file explorer window
call dein#add('scrooloose/nerdtree')
 " call dein#add('jistr/vim-nerdtree-tabs')
 
" Powerline is a statusline plugin for vim
call dein#add('Lokaltog/powerline')
 
" EasyMotion provides a much simpler way to use some motions in vim
call dein#add('Lokaltog/vim-easymotion')
 
" csapprox - make gvim colorschemes work in console
call dein#add('godlygeek/csapprox')
 
" Cofeescript support
call dein#add('kchmck/vim-coffee-script')
 
" greplace.vim - plugin that allows search and replace across all of the project files
call dein#add('skwp/greplace.vim')
 
" jslint .js files automatically
" call dein#add('hallettj/jslint.vim')
 
" syntastic - plugin for displaying syntax errors
call dein#add('scrooloose/syntastic')
 
" vim-endwise - wisely add 'end' in ruby
call dein#add('tpope/vim-endwise')
 
" vim-fugitive - vim-git integration
call dein#add('tpope/vim-fugitive')
 
" vim-git - a couple more basic commands to work with git
call dein#add('tpope/vim-git')
 
" vim-bundler to include gems from Gemfile.lock in ctags
call dein#add('tpope/vim-bundler')
 
" vim-markdown - syntax highlighting for markdown
call dein#add('plasticboy/vim-markdown')
 
" vim-matchit - better pair matching for the % command
call dein#add('vim-scripts/matchit.zip')
 
" vim-rake - :Rake, :A, :R like in rails.vim, but without rails
call dein#add('tpope/vim-rake')
 
" vim-rails - awesome vim-rails integration
call dein#add('tpope/vim-rails')
 
" vim-ruby - ruby integration
call dein#add('vim-ruby/vim-ruby')
 
" vim-ruby-refactoring - automatic refactorings for ruby
call dein#add('ecomba/vim-ruby-refactoring')
 
" A nice color scheme
call dein#add('altercation/vim-colors-solarized')
 
" cuztomizable tab completion, continued is the newer version
call dein#add('ervandew/supertab')
 
" surround string
call dein#add('tpope/vim-surround')
 
" haml
call dein#add("tpope/vim-haml")
 " snippets
call dein#add("honza/vim-snippets")
 
" Snipmate - the new version
call dein#add("MarcWeber/vim-addon-mw-utils")
 call dein#add("tomtom/tlib_vim")
 call dein#add("garbas/vim-snipmate")
 
" surround ES6 syntax
call dein#add('isRuslan/vim-es6')
 
" vim-textobj - dependency of rubyblock
call dein#add('kana/vim-textobj-user')
 
" vim-textobj-rubyblock - allow selecting blocks in ruby as text objects
call dein#add('nelstrom/vim-textobj-rubyblock')
 
" zencoding-vim - plugin for expanding css-like syntax to html
call dein#add('mattn/emmet-vim')
 
" LESS CSS syntax support
call dein#add("groenewege/vim-less")
 
" Adds colors of css 
call dein#add("skammer/vim-css-color")
 
" Clojure development plugins
call dein#add("tpope/vim-foreplay")
 call dein#add("tpope/vim-classpath")
 call dein#add("guns/vim-clojure-static")
 call dein#add("kien/rainbow_parentheses.vim")
 
" automatically close parens
call dein#add('Townk/vim-autoclose')
 
" vim angular
call dein#add('mhartington/vim-angular2-snippets')
 
" Gist support
call dein#add('mattn/gist-vim')
 
call dein#add('digitaltoad/vim-jade')
 
call dein#add('ngmy/vim-rubocop')
 
" react js
call dein#add('mxw/vim-jsx')
 call dein#add('justinj/vim-react-snippets')
 
" gulp
call dein#add('KabbAmine/gulp-vim')
 
" jumping to definition
call dein#add('xmisao/rubyjump.vim')
 
" json vim
call dein#add('elzr/vim-json')
 
" typescript
call dein#add('leafgarland/typescript-vim')
 
" repeat.vim: enable repeating supported plugin maps with .
call dein#add('tpope/vim-repeat')
 
" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
call dein#add('airblade/vim-gitgutter')
 
" lean & mean status/tabline for vim that's light as air
call dein#add('bling/vim-airline')
 
" Vim plugin that displays tags in a window, ordered by scope
call dein#add('majutsushi/tagbar')
 
" autoformat
call dein#add('Chiel92/vim-autoformat')
 
" json
call dein#add('XadillaX/json-formatter.vim')
 
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on         " Turn on file type detection.

syntax enable                     " Turn on syntax highlighting.

runtime macros/matchit.vim        " Load the matchit plugin.

set encoding=utf-8                " Default encoding

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set cursorline                    " Highlight the current line

set history=1000                  " remember more commands and search history
set undolevels=1000               " use many muchos levels of undo

set virtualedit=block             " allow the cursor to go into invalid places only in visual block mode

" Display tabs and trailing spaces
set list
set listchars=tab:»\ ,trail:·,nbsp:·

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set splitbelow splitright         " Splitting behavior

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=/tmp                " Keep swap files in one location

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs
set shiftround                    " use multiple of shiftwidth when indenting with '<' and '>'
set laststatus=2                  " Show the status line all the time

set confirm                       " confirm on quit, etc.
set autoread                      " automatically read changes from disk

set diffopt+=iwhite               " ignore whitespace in vimdiff

" Folding settings
set foldmethod=indent             " indent based on syntax
set foldnestmax=3                 " deepest fold is 3 levels
set foldlevel=3
set nofoldenable                  " don't fold by default

set matchpairs+=<:>               " add < and > to the chars that can be navigated with %

set spell                         " enable spell check
set spelllang=en_us               " default spell check language

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" change the mapleader from \ to ,
let mapleader=","

" j and k will navigate correctly in the wrapped lines
nnoremap j gj
nnoremap k gk

" map .md files fo markdown
au BufNewFile,BufRead *.md set filetype=markdown

" automatically strip trailing whitespace for some file types
autocmd FileType c,cpp,java,php,javascript,html,ruby autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

" Easy window navigation
map <C-h> <C-w>h:wa<cr>
map <C-j> <C-w>j:wa<cr>
map <C-k> <C-w>k:wa<cr>
map <C-l> <C-w>l:wa<cr>

" add arrows support

map <C-LEFT> <C-w>h
map <C-DOWN> <C-w>j
map <C-UP> <C-w>k
map <C-RIGHT> <C-w>l

" comments
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_auto_jump = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 0
let g:syntastic_disabled_filetypes=['html']
" let g:syntastic_haml_checkers = ['haml_lint']
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_typescript_checkers = ['tslint']
" let g:syntastic_debug = 3
nmap <leader>sc :SyntasticCheck<CR>

" nerd tree
map <silent> <leader>n :NERDTreeFind<CR>
let NERDTreeShowHidden=1

" zencoding-vim
let g:user_zen_expandabbr_key = '<c-e>' 
let g:use_zen_complete_tag = 1

" command-t
let g:CommandTMaxFiles = 100000

" spell-checking related shortcuts
nmap <silent> <leader>lp :set spelllang=pl_pl<CR>
nmap <silent> <leader>le :set spelllang=en_us<CR>

" ignore target directory in clojure projects
set wildignore+=target

" ignore _deploy and output in nanoc sites
set wildignore+=_deploy,output

" some Git mappings
nmap <silent> <leader>gt :Gstatus<cr>
nmap <silent> <leader>gl :Git pull --rebase<cr>
nmap <silent> <leader>gp :Git push<cr>
nmap <silent> <leader>gs :Git stash<cr>
nmap <silent> <leader>gsp :Git stash pop<cr>

nnoremap qw :silent! normal "zyiw<Esc>:let @z="'".@z."'"<CR>cw<c-r>z<Esc>b
nnoremap qd :silent! normal "zyiw<Esc>:let @z="\"".@z."\""<CR>cw<c-r>z<Esc>b

" Ag ignore
let g:agprg='ag -S --vimgrep --ignore node_modules --ignore coverage --ignore tags'

" rainbow parentheses always on
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" Don't indent midje facts
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let', 'fact']

" Command-T mappings from G. Bernhardt
map <leader>tv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>tc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>tm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>th :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>tl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>tp :CommandTFlush<cr>\|:CommandT public<cr>
map <leader>ts :CommandTFlush<cr>\|:CommandT public/stylesheets/sass<cr>
map <leader>tf :CommandTFlush<cr>\|:CommandT features<cr>
map <leader>tg :topleft 100 :split Gemfile<cr>
map <leader>tt :CommandTFlush<cr>\|:CommandTTag<cr>
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RUNNING TESTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>s :call RunTestFile()<cr>
map <leader>S :call RunNearestTest()<cr>
map <leader>A :call RunTests('')<cr>
" map <leader>c :w\|:!script/features<cr>
" map <leader>w :w\|:!script/features --profile wip<cr>

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\)$') != -1
    if in_test_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number . " -b")
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTests(filename)
    " Write the file and run tests for the given filename
    :w
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    if match(a:filename, '\.feature$') != -1
        exec ":!script/features " . a:filename
    else
        if filereadable("script/test")
            exec ":!script/test " . a:filename
        elseif filereadable("Gemfile")
            exec ":!bundle exec rspec --color " . a:filename
        else
            exec ":!rspec --color " . a:filename
        end
    end
endfunction

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
" "set cpoptions=ces$

" switch between two last open files faster
nmap <silent> <leader><leader> <c-^>

" create directory for current file
nmap <silent> <leader>d :!mkdir -p %:h<cr>:w<cr>

nmap <silent> <LocalLeader>f :Ggrep <c-r><c-w> **/*rb<cr>
nmap <silent> <LocalLeader>F :Ggrep <c-r><c-a> **/*rb<cr>

" solarized settings
" set background=light
" let g:solarized_termtrans=1
" let g:solarized_termcolors=256
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"

" Colors for console
if !has("gui_running")
  set t_Co=256
endif

" Scheme
colors railscasts

" don't search coverage reports and vcr cassettes
set wildignore+=spec/reports
set wildignore+=coverage
set wildignore+=spec/cassettes
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,tags
" let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|\.bundle|log|tmp|tags|node_modules|bower_components)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" Use Node.js for JavaScript interpretation
let $JS_CMD='node'

" set some different setting for the diff mode
if &diff
  colorscheme fu_patched " different scheme
  set nonumber " no line numbers
endif

nmap <silent> <leader>json :%!python -m json.tool<cr>

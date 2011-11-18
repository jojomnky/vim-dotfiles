set autoindent
set cindent
set smartindent
set expandtab
set smartcase
set tabstop=4
set shiftwidth=4
set nu
nnoremap <silent> <leader>vh :execute 'match InterestingWord1 /\<<c-r><c-w>\>/'<cr>
nnoremap <silent> <leader>v1 :execute 'match InterestingWord1 /\<<c-r><c-w>\>/'<cr>
nnoremap <silent> <leader>v2 :execute '2match InterestingWord2 /\<<c-r><c-w>\>/'<cr>
nnoremap <silent> <leader>v3 :execute '3match InterestingWord3 /\<<c-r><c-w>\>/'<cr>
:set tabstop=2        " Force tabs to be displayed/expanded to 2 spaces (instead of default 8).
:set softtabstop=2    " Make Vim treat <Tab> key as 2 spaces, but respect hard Tabs.
                      " I don't think this one will do what you want.
:set expandtab        " Turn Tab keypresses into spaces.  Sounds like this is happening to you.
                      " You can still insert real Tabs as [Ctrl]-V [Tab].
:set shiftwidth=2     " When auto-indenting, indent by this much.
                      " (Use spaces/tabs per "expandtab".)
:retab                " Change all the existing tab characters to match the current tab settings
let g:ProjTags=['~/git/SchoolSpringPhp/','~/tags']
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
let g:netrw_altv = 1
let Tlist_Use_Right_Window = 1    " tags list on right window
:set tags=.vimtags
" Fugitive {{{

nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gco :Gcheckout<cr>
nnoremap <leader>gci :Gcommit<cr>
nnoremap <leader>gm :Gmove<cr>
nnoremap <leader>gr :Gremove<cr>
nnoremap <leader>gl :Shell git gl -18<cr>:wincmd \|<cr>
" Rainbox Parentheses {{{

nnoremap <leader>R :RainbowParenthesesToggle<cr>
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16


" }}}

augroup ft_fugitive
    au!

    au BufNewFile,BufRead .git/index setlocal nolist
augroup END

" }}}
augroup ft_html
    au!

    au BufNewFile,BufRead *.html setlocal filetype=htmljinja
    au BufNewFile,BufRead *.twig setlocal filetype=htmljinja
augroup END
map <silent> <F8> :Tlist<CR>
nnoremap K <nop>
inoremap <C-_> <Space><BS><Esc>:call InsertCloseTag()<cr>a
inoremap jk <esc>
set completeopt=longest,menuone,preview
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
function! InsertTabWrapper(direction)
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  elseif "backward" == a:direction
    return "\<c-p>"
  else
    return "\<c-n>"
  endif
endfunction
inoremap <Tab> <C-R>=InsertTabWrapper("backward")<CR>
inoremap <S-Tab> <C-R>=InsertTabWrapper("forward")<CR>
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
set background=dark
colorscheme solarized
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
set viminfo='10,\"100,:5000,%,n~/.viminfo
" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>
set guioptions=ac  
  " Do use the currently active spell checking for completion though!
  " (I love this feature :-)
set complete+=kspell
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set incsearch
 " disable tabs
 let mapleader = ","
 set expandtab
 set shiftwidth=4
 set softtabstop=4
" Forget being compatible with good ol' vi
set nocompatible

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting
syntax on

" Why is this not a default
set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>
" Maps to make handling windows a bit easier
 noremap <silent> ,h :wincmd h<CR>
 noremap <silent> ,j :wincmd j<CR>
 noremap <silent> ,k :wincmd k<CR>
 noremap <silent> ,l :wincmd l<CR>
 noremap <silent> ,sb :wincmd p<CR>
 noremap <silent> <C-F9>  :vertical resize -10<CR>
 noremap <silent> <C-F10> :resize +10<CR>
 noremap <silent> <C-F11> :resize -10<CR>
 noremap <silent> <C-F12> :vertical resize +10<CR>
 noremap <silent> ,s8 :vertical resize 83<CR>
 noremap <silent> ,cj :wincmd j<CR>:close<CR>
 noremap <silent> ,ck :wincmd k<CR>:close<CR>
 noremap <silent> ,ch :wincmd h<CR>:close<CR>
 noremap <silent> ,cl :wincmd l<CR>:close<CR>
 noremap <silent> ,cc :close<CR>
 noremap <silent> ,cw :cclose<CR>
 noremap <silent> ,ml <C-W>L
 noremap <silent> ,mk <C-W>K
 noremap <silent> ,mh <C-W>H
 noremap <silent> ,mj <C-W>J
 noremap <silent> <C-7> <C-W>>
 noremap <silent> <C-8> <C-W>+
 noremap <silent> <C-9> <C-W>+
 noremap <silent> <C-9> <C-W>+


set fillchars=fold:\ "(there's a space after that \)
highlight Folded ctermfg=DarkGreen ctermbg=Black
map <C-f> :NERDTreeToggle<CR>
au FileType php set omnifunc=phpcomplete#CompletePHP

" You might also find this useful
" " PHP Generated Code Highlights (HTML & SQL)                                              
"
 let php_sql_query=1                                                                                        
 let php_htmlInStrings=1
if has('gui_running')
    set guifont=Menlo:h12

    " Remove all the UI cruft
    set go-=T
    set go-=l
    set go-=L
    set go-=r
    set go-=R

    highlight SpellBad term=underline gui=undercurl guisp=Orange

    " Use a line-drawing char for pretty vertical splits.
    set fillchars+=vert:│

    " Different cursors for different modes.
    set guicursor=n-c:block-Cursor-blinkon0
    set guicursor+=v:block-vCursor-blinkon0
    set guicursor+=i-ci:ver20-iCursor
    highlight iCursor guifg=white guibg=steelblue

    if has("gui_macvim")
        " Full screen means FULL screen
        set fuoptions=maxvert,maxhorz

        " Use the normal HIG movements, except for M-Up/Down
        let macvim_skip_cmd_opt_movement = 1
        no   <D-Left>       <Home>
        no!  <D-Left>       <Home>
        no   <M-Left>       <C-Left>
        no!  <M-Left>       <C-Left>

        no   <D-Right>      <End>
        no!  <D-Right>      <End>
        no   <M-Right>      <C-Right>
        no!  <M-Right>      <C-Right>

        no   <D-Up>         <C-Home>
        ino  <D-Up>         <C-Home>
        imap <M-Up>         <C-o>{

        no   <D-Down>       <C-End>
        ino  <D-Down>       <C-End>
        imap <M-Down>       <C-o>}

        imap <M-BS>         <C-w>
        inoremap <D-BS>     <esc>my0c`y
    else
        " Non-MacVim GUI, like Gvim
    end
else
    " Console Vim
endif
syntax on
set background=dark
colorscheme molokai

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

call pathogen#infect()

let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <Plug>(neocomplcache_start_auto_complete) 
inoremap <Plug>(neocomplcache_start_auto_select_complete) <Down>
inoremap <Plug>(neocomplcache_select_quick_match) <Down>
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_complete) unite#sources#neocomplcache#start_complete()
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_snippet) unite#sources#snippet#start_complete()
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <silent> <Plug>NERDCommenterInInsert  <BS>:call NERDComment(0, "insert")
xnoremap  h
nnoremap  h
snoremap <silent>  c
onoremap  h
nnoremap 	  
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
onoremap 	  
noremap <NL> j
noremap  k
noremap  l
snoremap  a<BS>
xnoremap <silent>  :call multiple_cursors#new("v")
nnoremap <silent>  :call multiple_cursors#new("n")
snoremap  a<BS>
vnoremap <silent> # :call VisualSearch('b')
vnoremap $e `>a"`<i"
vnoremap $q `>a'`<i'
vnoremap $$ `>a"`<i"
vnoremap $3 `>a}`<i{
vnoremap $2 `>a]`<i[
vnoremap $1 `>a)`<i(
snoremap % a<BS>%
snoremap ' a<BS>'
vnoremap <silent> * :call VisualSearch('f')
map <silent> ,w,t <Plug>VimwikiTabMakeDiaryNote
map <silent> ,w,w <Plug>VimwikiMakeDiaryNote
map <silent> ,ws <Plug>VimwikiUISelect
map <silent> ,wt <Plug>VimwikiTabIndex
map <silent> ,ww <Plug>VimwikiIndex
map ,mbt <Plug>TMiniBufExplorer
map ,mbu <Plug>UMiniBufExplorer
map ,mbc <Plug>CMiniBufExplorer
map ,mbe <Plug>MiniBufExplorer
nmap ,caL <Plug>CalendarH
nmap ,cal <Plug>CalendarV
nmap ,ihn :IHN
nmap ,is :IHS:A
nmap ,ih :IHS
nmap ,ca <Plug>NERDCommenterAltDelims
vmap ,cA <Plug>NERDCommenterAppend
nmap ,cA <Plug>NERDCommenterAppend
vmap ,c$ <Plug>NERDCommenterToEOL
nmap ,c$ <Plug>NERDCommenterToEOL
vmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
vmap ,cn <Plug>NERDCommenterNest
nmap ,cn <Plug>NERDCommenterNest
vmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
vmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
vmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
vmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
vmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
vmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
vmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
vmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
nnoremap ,gd :Gdiff
nnoremap ,gr :Gread
nnoremap ,gw :Gwrite
nnoremap ,gc :Gcommit
nnoremap ,gs :Gstatus
xmap ,s <Plug>Vsurround
map ,tl :TlistToggle
omap ,cb :'<,'>call NERDComment(1, 'sexy')
map ,tt :NERDTreeToggle
noremap <silent> ,/ :nohls
nnoremap ,r :%s/\<\>/
map ,wc :Calendar
map ,wm <Plug>VimwikiToggleListItem
map ,wr <Plug>VimwikiRenameLink
map ,wd <Plug>VimwikiDeleteLink
map ,wp <Plug>VimwikiPrevLink
map ,wn <Plug>VimwikiNextLink
map ,wb <Plug>VimwikiGoBackLink
map ,wq <Plug>VimwikiVSplitLink
map ,we <Plug>VimwikiSplitLink
map ,wf <Plug>VimwikiFollowLink
map ,pp :setlocal paste!
map ,q :e ~/buffer
noremap ,m mmHmt:%s///ge'tzt'm
map ,s? z=
map ,sa zg
map ,sp [s
map ,sn ]s
map ,ss :setlocal spell!
map ,p :cp
map ,n :cn
omap ,cc :botright cope
map ,cd :cd %:p:h
map ,tm :tabmove 
map ,tc :tabclose
map ,te :tabedit 
map ,tn :tabnew
map ,ba :1,300 bd!
map ,bd :Bclose
map <silent> , :noh
map ,g :vimgrep // **/*.<Left><Left><Left><Left><Left><Left><Left>
map ,e :e! ~/.vimrc
map 0 ^
vnoremap < <gv
vnoremap > >gv
xmap S <Plug>VSurround
snoremap U a<BS>U
map Y y$
vmap [% [%m'gv``
snoremap \ a<BS>\
vmap ]% ]%m'gv``
snoremap ^ a<BS>^
snoremap ` a<BS>`
vmap a% [%v]%
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
vnoremap <silent> gv :call VisualSearch('gv')
nnoremap j gj
nnoremap k gk
nnoremap <silent> sq :FufQuickfix
nnoremap <silent> sI :FufBookmarkDirAdd
nnoremap <silent> si :FufBookmarkDir
nnoremap <silent> so :FufBufferTag!
nnoremap <silent> sj :FufBuffer!
nnoremap <silent> sT :FufTagWithCursorWord!
nnoremap <silent> st :FufTag!
nnoremap <silent> sF :FufFile!
nnoremap <silent> sf :FufCoverageFile!
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
map <F7> :!chmod a+x %
map <F6> :!ruby %
map <F5> :!./%
xmap <Right> :bn
nmap <Right> :bn
xmap <Left> :bp
nmap <Left> :bp
nmap <F8> :source ./Session.vim
snoremap <Right> a
snoremap <Left> bi
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
snoremap <silent> <Del> c
snoremap <BS> a<BS>
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
nnoremap <silent> <Plug>CalendarH :cal Calendar(1)
nnoremap <silent> <Plug>CalendarV :cal Calendar(0)
nmap <silent> <Plug>NERDCommenterAppend :call NERDComment(0, "append")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment(0, "toEOL")
vnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(1, "uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(0, "uncomment")
vnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(1, "nested")
nnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(0, "nested")
vnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(1, "alignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(0, "alignBoth")
vnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(1, "alignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(0, "alignLeft")
vmap <silent> <Plug>NERDCommenterYank :call NERDComment(1, "yank")
nmap <silent> <Plug>NERDCommenterYank :call NERDComment(0, "yank")
vnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(1, "invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(0, "invert")
vnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(1, "sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(0, "sexy")
vnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(1, "minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(0, "minimal")
vnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(1, "toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(0, "toggle")
vnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(1, "norm")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(0, "norm")
map <F4> :TMiniBufExplorer
omap <Left> :bp
omap <Right> :bn
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =UltiSnips#ExpandSnippet()
imap  <Plug>Isurround
cnoremap $q eDeleteTillSlash()
cnoremap $c e eCurrentFileDir("e")
cnoremap $j e ./
cnoremap $d e ~/desktop/
cnoremap $h e ~/
imap ,ihn :IHN
imap ,is :IHS:A
imap ,ih :IHS
vmap ë :m'<-2`>my`<mzgv`yo`z
vmap ê :m'>+`<my`>mzgv`yo`z
nmap ë mz:m-2`z
nmap ê mz:m+`z
inoremap jj 
iabbr xdate =strftime("%d/%m/%y %H:%M:%S")
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=eol,start,indent
set cmdheight=2
set completefunc=neocomplcache#manual_complete
set completeopt=preview,menuone
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix,dos,mac
set grepprg=/bin/grep\ -nH
set helplang=en
set hidden
set history=300
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set matchtime=2
set nomodeline
set mouse=a
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/bundle/NERD_commenter-2.3.0,~/.vim/bundle/NERD_tree-4.1.0,~/.vim/bundle/a.vim-2.18,~/.vim/bundle/caclendar-2.5,~/.vim/bundle/fugitive-1.2,~/.vim/bundle/fuzzyfinder-4.2.2,~/.vim/bundle/matchit-1.13.2,~/.vim/bundle/minibufferexpl-6.3.2,~/.vim/bundle/neocomplcache-6.1,~/.vim/bundle/slimv-master,~/.vim/bundle/surround-1.90,~/.vim/bundle/taglist_45,~/.vim/bundle/ultisnips-submodule,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-l9-1.1,~/.vim/bundle/vim-multiple-cursors,~/.vim/bundle/vim-powerline-develop,~/.vim/bundle/vim-rails-submodule,~/.vim/bundle/vim-slim,~/.vim/bundle/vim-snippets-submodule,~/.vim/bundle/vimwiki-1.1.1,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/bundle/ultisnips-submodule/after,~/.vim/after
set scrolloff=7
set shiftwidth=4
set showmatch
set smartcase
set smartindent
set smarttab
set splitbelow
set splitright
set statusline=%t%m%r%h%w[%L:%l-%c]%y%{fugitive#statusline()}
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set switchbuf=usetab
set tabstop=4
set textwidth=500
set visualbell
set whichwrap=b,s,<,>,h,l
set wildmenu
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/cube
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
silent! argdel *
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#manual_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=500
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

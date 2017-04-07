let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <Plug>OrgNewHeadingAboveInsert :silent! :py3 ORGMODE.plugins[u"EditStructure"].new_heading(below=False, insert_mode=True)
inoremap <Plug>OrgNewHeadingBelowInsert :silent! :py3 ORGMODE.plugins[u"EditStructure"].new_heading(below=True, insert_mode=True)
inoremap <Plug>OrgNewHeadingBelowAfterChildrenInsert :silent! :py3 ORGMODE.plugins[u"EditStructure"].new_heading(insert_mode=True, end_of_last_child=True)
inoremap <Plug>OrgPromoteOnHeadingInsert :silent! :py3 ORGMODE.plugins[u"EditStructure"].promote_heading(including_children=False, on_heading=True, insert_mode=True)
inoremap <Plug>OrgDemoteOnHeadingInsert :silent! :py3 ORGMODE.plugins[u"EditStructure"].demote_heading(including_children=False, on_heading=True, insert_mode=True)
imap <silent> <F4> :set invpaste:set paste?
xmap  <Plug>SpeedDatingUp
nmap  <Plug>SpeedDatingUp
map  <Left>
map <NL> <Down>
map  <Up>
map  <Right>
map  <Plug>(ctrlp)
xmap  <Plug>SpeedDatingDown
nmap  <Plug>SpeedDatingDown
nmap ,u ysiw_ysiw_
nmap ,Y :NERDTreeClose
nmap ,T :NERDTree
nmap ,a za
nmap ,f zf)
nmap ,. :tabprev
nmap ,, :tabnext
nmap ,w :tabclose
nmap ,t :tabnew
map ,V :source $MYVIMRC
map ,v :vsp $MYVIMRC
nnoremap K i
cmap й q
cmap ф a
cmap у e
cmap ч x
cmap ц w
xmap S <Plug>VSurround
nmap cgc <Plug>ChangeCommentary
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap d <Plug>SpeedDatingNowLocal
nmap d <Plug>SpeedDatingNowUTC
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
xmap gS <Plug>VgSurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <Plug>OrgToggleFoldingNormal :py3 ORGMODE.plugins[u"ShowHide"].toggle_folding()
nnoremap <Plug>OrgToggleFoldingReverse :py3 ORGMODE.plugins[u"ShowHide"].toggle_folding(reverse=True)
nnoremap <Plug>OrgGlobalToggleFoldingNormal :py3 ORGMODE.plugins[u"ShowHide"].global_toggle_folding()
nnoremap <Plug>OrgGlobalToggleFoldingReverse :py3 ORGMODE.plugins[u"ShowHide"].global_toggle_folding(reverse=True)
nnoremap <Plug>OrgJumpToParentNormal :py3 ORGMODE.plugins[u"Navigator"].parent(mode=u"normal")
nnoremap <Plug>OrgJumpToParentsSiblingNormal :py3 ORGMODE.plugins[u"Navigator"].parent_next_sibling(mode=u"normal")
nnoremap <Plug>OrgJumpToPreviousNormal :py3 ORGMODE.plugins[u"Navigator"].previous(mode=u"normal")
nnoremap <Plug>OrgJumpToNextNormal :py3 ORGMODE.plugins[u"Navigator"].next(mode=u"normal")
vnoremap <Plug>OrgJumpToParentVisual ::py3 ORGMODE.plugins[u"Navigator"].parent(mode=u"visual")
vnoremap <Plug>OrgJumpToParentsSiblingVisual ::py3 ORGMODE.plugins[u"Navigator"].parent_next_sibling(mode=u"visual")
vnoremap <Plug>OrgJumpToPreviousVisual ::py3 ORGMODE.plugins[u"Navigator"].previous(mode=u"visual")
vnoremap <Plug>OrgJumpToNextVisual ::py3 ORGMODE.plugins[u"Navigator"].next(mode=u"visual")
onoremap <Plug>OrgJumpToParentOperator ::py3 ORGMODE.plugins[u"Navigator"].parent(mode=u"operator")
onoremap <Plug>OrgJumpToParentsSiblingOperator ::py3 ORGMODE.plugins[u"Navigator"].parent_next_sibling(mode=u"operator")
onoremap <Plug>OrgJumpToPreviousOperator ::py3 ORGMODE.plugins[u"Navigator"].previous(mode=u"operator")
onoremap <Plug>OrgJumpToNextOperator ::py3 ORGMODE.plugins[u"Navigator"].next(mode=u"operator")
nnoremap <Plug>OrgJumpToPreviousSkipChildrenNormal :py3 ORGMODE.plugins[u"Navigator"].previous(mode=u"normal", skip_children=True)
nnoremap <Plug>OrgJumpToNextSkipChildrenNormal :py3 ORGMODE.plugins[u"Navigator"].next(mode=u"normal", skip_children=True)
vnoremap <Plug>OrgJumpToPreviousSkipChildrenVisual ::py3 ORGMODE.plugins[u"Navigator"].previous(mode=u"visual", skip_children=True)
vnoremap <Plug>OrgJumpToNextSkipChildrenVisual ::py3 ORGMODE.plugins[u"Navigator"].next(mode=u"visual", skip_children=True)
onoremap <Plug>OrgJumpToPreviousSkipChildrenOperator ::py3 ORGMODE.plugins[u"Navigator"].previous(mode=u"operator", skip_children=True)
onoremap <Plug>OrgJumpToNextSkipChildrenOperator ::py3 ORGMODE.plugins[u"Navigator"].next(mode=u"operator", skip_children=True)
nnoremap <Plug>OrgNewHeadingAboveNormal :silent! :py3 ORGMODE.plugins[u"EditStructure"].new_heading(below=False)
nnoremap <Plug>OrgNewHeadingBelowNormal :silent! :py3 ORGMODE.plugins[u"EditStructure"].new_heading(below=True)
nnoremap <Plug>OrgNewHeadingBelowAfterChildrenNormal :silent! :py3 ORGMODE.plugins[u"EditStructure"].new_heading(below=True, end_of_last_child=True)
nnoremap <Plug>OrgMoveHeadingUpward :py3 ORGMODE.plugins[u"EditStructure"].move_heading_upward(including_children=False)
nnoremap <Plug>OrgMoveSubtreeUpward :py3 ORGMODE.plugins[u"EditStructure"].move_heading_upward()
nnoremap <Plug>OrgMoveHeadingDownward :py3 ORGMODE.plugins[u"EditStructure"].move_heading_downward(including_children=False)
nnoremap <Plug>OrgMoveSubtreeDownward :py3 ORGMODE.plugins[u"EditStructure"].move_heading_downward()
nnoremap <Plug>OrgPromoteHeadingNormal :silent! :py3 ORGMODE.plugins[u"EditStructure"].promote_heading(including_children=False)
nnoremap <Plug>OrgPromoteOnHeadingNormal :silent! :py3 ORGMODE.plugins[u"EditStructure"].promote_heading(including_children=False, on_heading=True)
nnoremap <Plug>OrgPromoteSubtreeNormal :silent! :py3 ORGMODE.plugins[u"EditStructure"].promote_heading()
nnoremap <Plug>OrgDemoteHeadingNormal :silent! :py3 ORGMODE.plugins[u"EditStructure"].demote_heading(including_children=False)
nnoremap <Plug>OrgDemoteOnHeadingNormal :silent! :py3 ORGMODE.plugins[u"EditStructure"].demote_heading(including_children=False, on_heading=True)
nnoremap <Plug>OrgDemoteSubtreeNormal :silent! :py3 ORGMODE.plugins[u"EditStructure"].demote_heading()
nnoremap <Plug>OrgCheckBoxNewAbove :OrgCheckBoxNewAbove
nnoremap <Plug>OrgCheckBoxNewBelow :OrgCheckBoxNewBelow
nnoremap <Plug>OrgCheckBoxToggle :OrgCheckBoxToggle
nnoremap <Plug>OrgCheckBoxUpdate :OrgCheckBoxUpdate
nnoremap <Plug>OrgPlainListItemNewAbove :OrgPlainListItemNewAbove
nnoremap <Plug>OrgPlainListItemNewBelow :OrgPlainListItemNewBelow
nnoremap <Plug>OrgHyperlinkFollow :OrgHyperlinkFollow
nnoremap <Plug>OrgHyperlinkCopy :OrgHyperlinkCopy
nnoremap <Plug>OrgHyperlinkInsert :OrgHyperlinkInsert
nnoremap <Plug>OrgHyperlinkNextLink :OrgHyperlinkNextLink
nnoremap <Plug>OrgHyperlinkPreviousLink :OrgHyperlinkPreviousLink
nnoremap <Plug>OrgTodoToggleNonInteractive :py3 ORGMODE.plugins[u"Todo"].toggle_todo_state(interactive=False)
nnoremap <Plug>OrgTodoToggleInteractive :py3 ORGMODE.plugins[u"Todo"].toggle_todo_state(interactive=True)
nnoremap <Plug>OrgTodoForward :py3 ORGMODE.plugins[u"Todo"].toggle_todo_state()
nnoremap <Plug>OrgTodoBackward :py3 ORGMODE.plugins[u"Todo"].toggle_todo_state(direction=2)
nnoremap <Plug>OrgTodoSetForward :py3 ORGMODE.plugins[u"Todo"].toggle_todo_state(next_set=True)
nnoremap <Plug>OrgTodoSetBackward :py3 ORGMODE.plugins[u"Todo"].toggle_todo_state(direction=2, next_set=True)
nnoremap <Plug>OrgSetTags :OrgSetTags
nnoremap <Plug>OrgFindTags :OrgFindTags
nnoremap <Plug>OrgDateInsertTimestampActiveCmdLine :OrgDateInsertTimestampActiveCmdLine
nnoremap <Plug>OrgDateInsertTimestampInactiveCmdLine :OrgDateInsertTimestampInactiveCmdLine
nnoremap <Plug>OrgDateInsertTimestampActiveWithCalendar :OrgDateInsertTimestampActiveWithCalendar
nnoremap <Plug>OrgDateInsertTimestampInactiveWithCalendar :OrgDateInsertTimestampInactiveWithCalendar
nnoremap <Plug>OrgAgendaTodo :OrgAgendaTodo
nnoremap <Plug>OrgBufferAgendaTodo :OrgBufferAgendaTodo
nnoremap <Plug>OrgAgendaWeek :OrgAgendaWeek
nnoremap <Plug>OrgBufferAgendaWeek :OrgBufferAgendaWeek
nnoremap <Plug>OrgAgendaTimeline :OrgAgendaTimeline
nnoremap <Plug>OrgJumpToFirstCharacter :py3 ORGMODE.plugins[u"Misc"].jump_to_first_character()
nnoremap <Plug>OrgEditAtFirstCharacter :py3 ORGMODE.plugins[u"Misc"].edit_at_first_character()
vnoremap <Plug>OrgInnerHeadingVisual ::py3 ORGMODE.plugins[u"Misc"].i_heading()
vnoremap <Plug>OrgAInnerHeadingVisual ::py3 ORGMODE.plugins[u"Misc"].a_heading()
vnoremap <Plug>OrgOuterHeadingVisual ::py3 ORGMODE.plugins[u"Misc"].i_heading(selection=u"outer")
vnoremap <Plug>OrgAOuterHeadingVisual ::py3 ORGMODE.plugins[u"Misc"].a_heading(selection=u"outer")
onoremap <Plug>OrgInnerHeadingOperator ::py3 ORGMODE.plugins[u"Misc"].i_heading(mode=u"operator")
onoremap <Plug>OrgOuterHeadingOperator ::py3 ORGMODE.plugins[u"Misc"].i_heading(mode=u"operator", selection=u"outer")
vnoremap <Plug>OrgInnerTreeVisual ::py3 ORGMODE.plugins[u"Misc"].i_heading(skip_children=True)
vnoremap <Plug>OrgAInnerTreeVisual ::py3 ORGMODE.plugins[u"Misc"].a_heading(skip_children=True)
vnoremap <Plug>OrgOuterTreeVisual <::py3 ORGMODE.plugins[u"Misc"].i_heading(selection=u"outer", skip_children=True)
vnoremap <Plug>OrgAOuterTreeVisual ::py3 ORGMODE.plugins[u"Misc"].a_heading(selection=u"outer", skip_children=True)
onoremap <Plug>OrgInnerTreeOperator ::py3 ORGMODE.plugins[u"Misc"].i_heading(mode=u"operator")
onoremap <Plug>OrgOuterTreeOperator ::py3 ORGMODE.plugins[u"Misc"].i_heading(mode=u"operator", selection=u"outer", skip_children=True)
nnoremap <Plug>OrgExportToPDF :OrgExportToPDF
nnoremap <Plug>OrgExportToBeamerPDF :OrgExportToBeamerPDF
nnoremap <Plug>OrgExportToLaTeX :OrgExportToLaTeX
nnoremap <Plug>OrgExportToHTML :OrgExportToHTML
nnoremap <Plug>OrgExportToMarkdown :OrgExportToMarkdown
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>SpeedDatingNowUTC :call speeddating#timestamp(1,v:count)
nnoremap <silent> <Plug>SpeedDatingNowLocal :call speeddating#timestamp(0,v:count)
vnoremap <silent> <Plug>SpeedDatingDown :call speeddating#incrementvisual(-v:count1)
vnoremap <silent> <Plug>SpeedDatingUp :call speeddating#incrementvisual(v:count1)
nnoremap <silent> <Plug>SpeedDatingDown :call speeddating#increment(-v:count1)
nnoremap <silent> <Plug>SpeedDatingUp :call speeddating#increment(v:count1)
nnoremap <silent> <Plug>(ctrlp) :CtrlP
nmap <silent> <Plug>CommentaryUndo <Plug>Commentary<Plug>Commentary
nnoremap <silent> <Plug>SurroundRepeat .
nmap <silent> <F4> :set invpaste:set paste?
noremap <Right> <Nop>
noremap <Left> <Nop>
noremap <Down> <Nop>
noremap <Up> <Nop>
nmap <S-F5> :call LoadDefSession()
nmap <C-F5> :call MakeDefSession()
map <F8> :!dot -Tpng % -o%.png && feh %.png
map <C-F10> :!make test
map <F10> :!make run
map <C-F9> :!python3 -i '%:t'
map <F7> :!python3 -i '%:t'
map <F9> :w :!python3 '%:t'
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
nmap б ,
nmap Ф A
map л k
map о j
map Ж :
nmap ю .
nmap ф a
map ш i
map ё `
iabbr ifmain if __name__=='__main__':
let &cpo=s:cpo_save
unlet s:cpo_save
set keymap=russian-jcukenwin
set autochdir
set background=dark
set backspace=indent,eol,start
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fillchars=vert:|,fold:\ 
set guioptions=aegimrLt
set helplang=en
set iminsert=0
set imsearch=0
set operatorfunc=<SNR>16_opfunc
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/plugged/vim-surround/,~/.vim/plugged/nerdtree/,~/.vim/plugged/vim-commentary/,~/.vim/plugged/ctrlp.vim/,~/.vim/plugged/vim-orgmode/,~/.vim/plugged/vim-speeddating/,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set shiftwidth=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabstop=4
set textwidth=90
set undodir=~/.vim/backups
set undofile
set wildignore=*.pyc
set wildmenu
set window=38
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/pythonPetProjects/weather
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +17 ~/pythonPetProjects/quest/quest.py
badd +94 ~/pythonPetProjects/quest/ByteFont.py
badd +1 ~/pythonPetProjects/quest/map.yaml
badd +39 ~/.vimrc
badd +39 ~/pythonPetProjects/quest/mega.py
badd +1 ~/ydsk/txthub/Linux/vimsummaryru
badd +118 ~/pythonPetProjects/quest/map_util.py
badd +242 ~/pythonPetProjects/quest/actions.py
badd +91 ~/pythonPetProjects/quest/render.py
badd +10 ~/pythonPetProjects/quest/util.py
badd +1 ~/pythonPetProjects/quest/Makefile
badd +8 ~/pythonPetProjects/quest/tests/test_map_util.py
badd +8 ~/pythonPetProjects/quest/log.py
badd +188 ~/pythonPetProjects/quest/TZ_quest.org
badd +1 ~/ydsk/txthub/live.org
badd +11 ~/pythonPetProjects/quest/tests/test_player.py
badd +11 ~/pythonPetProjects/quest/hall2f.yaml
badd +1 ~/pythonPetProjects/quest/light.py
badd +2 ~/pythonPetProjects/quest/objects.yaml
badd +1 ~/pythonPetProjects/quest/room21.yaml
badd +68 ~/.bashrc
badd +0 ~/pythonPetProjects/weather/weather.py
badd +0 ~/pythonPetProjects/_autostart.py
argglobal
silent! argdel *
argadd ~/pythonPetProjects/quest/quest.py
set stal=2
edit ~/pythonPetProjects/quest/map.yaml
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 20 + 19) / 39)
exe 'vert 1resize ' . ((&columns * 40 + 68) / 136)
exe '2resize ' . ((&lines * 20 + 19) / 39)
exe 'vert 2resize ' . ((&columns * 39 + 68) / 136)
argglobal
lnoremap <buffer> " Э
lnoremap <buffer> # №
lnoremap <buffer> $ ;
lnoremap <buffer> & ?
lnoremap <buffer> ' э
lnoremap <buffer> , б
lnoremap <buffer> . ю
lnoremap <buffer> / .
lnoremap <buffer> : Ж
lnoremap <buffer> ; ж
lnoremap <buffer> < Б
lnoremap <buffer> > Ю
lnoremap <buffer> ? ,
lnoremap <buffer> @ "
lnoremap <buffer> A Ф
lnoremap <buffer> B И
lnoremap <buffer> C С
lnoremap <buffer> D В
lnoremap <buffer> E У
lnoremap <buffer> F А
lnoremap <buffer> G П
lnoremap <buffer> H Р
lnoremap <buffer> I Ш
lnoremap <buffer> J О
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> K Л
lnoremap <buffer> L Д
lnoremap <buffer> M Ь
lnoremap <buffer> N Т
lnoremap <buffer> O Щ
lnoremap <buffer> P З
lnoremap <buffer> Q Й
lnoremap <buffer> R К
lnoremap <buffer> S Ы
lnoremap <buffer> T Е
lnoremap <buffer> U Г
lnoremap <buffer> V М
lnoremap <buffer> W Ц
lnoremap <buffer> X Ч
lnoremap <buffer> Y Н
lnoremap <buffer> Z Я
lnoremap <buffer> [ х
lnoremap <buffer> ] ъ
lnoremap <buffer> ^ :
lnoremap <buffer> ` ё
lnoremap <buffer> a ф
lnoremap <buffer> b и
lnoremap <buffer> c с
lnoremap <buffer> d в
lnoremap <buffer> e у
lnoremap <buffer> f а
lnoremap <buffer> g п
lnoremap <buffer> h р
lnoremap <buffer> i ш
lnoremap <buffer> j о
lnoremap <buffer> k л
lnoremap <buffer> l д
lnoremap <buffer> m ь
lnoremap <buffer> n т
lnoremap <buffer> o щ
lnoremap <buffer> p з
lnoremap <buffer> q й
lnoremap <buffer> r к
lnoremap <buffer> s ы
lnoremap <buffer> t е
lnoremap <buffer> u г
lnoremap <buffer> v м
lnoremap <buffer> w ц
lnoremap <buffer> x ч
lnoremap <buffer> y н
lnoremap <buffer> z я
lnoremap <buffer> { Х
lnoremap <buffer> } Ъ
lnoremap <buffer> ~ Ё
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=russian-jcukenwin
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'yaml'
setlocal filetype=yaml
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetYAMLIndent(v:lnum)
setlocal indentkeys=!^F,o,O,0#,0},0],<:>,0-
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
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
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'yaml'
setlocal syntax=yaml
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
14
normal! zo
15
normal! zo
33
normal! zo
44
normal! zo
57
normal! zo
58
normal! zo
let s:l = 20 - ((13 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 021|
wincmd w
argglobal
edit ~/pythonPetProjects/quest/objects.yaml
lnoremap <buffer> " Э
lnoremap <buffer> # №
lnoremap <buffer> $ ;
lnoremap <buffer> & ?
lnoremap <buffer> ' э
lnoremap <buffer> , б
lnoremap <buffer> . ю
lnoremap <buffer> / .
lnoremap <buffer> : Ж
lnoremap <buffer> ; ж
lnoremap <buffer> < Б
lnoremap <buffer> > Ю
lnoremap <buffer> ? ,
lnoremap <buffer> @ "
lnoremap <buffer> A Ф
lnoremap <buffer> B И
lnoremap <buffer> C С
lnoremap <buffer> D В
lnoremap <buffer> E У
lnoremap <buffer> F А
lnoremap <buffer> G П
lnoremap <buffer> H Р
lnoremap <buffer> I Ш
lnoremap <buffer> J О
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> K Л
lnoremap <buffer> L Д
lnoremap <buffer> M Ь
lnoremap <buffer> N Т
lnoremap <buffer> O Щ
lnoremap <buffer> P З
lnoremap <buffer> Q Й
lnoremap <buffer> R К
lnoremap <buffer> S Ы
lnoremap <buffer> T Е
lnoremap <buffer> U Г
lnoremap <buffer> V М
lnoremap <buffer> W Ц
lnoremap <buffer> X Ч
lnoremap <buffer> Y Н
lnoremap <buffer> Z Я
lnoremap <buffer> [ х
lnoremap <buffer> ] ъ
lnoremap <buffer> ^ :
lnoremap <buffer> ` ё
lnoremap <buffer> a ф
lnoremap <buffer> b и
lnoremap <buffer> c с
lnoremap <buffer> d в
lnoremap <buffer> e у
lnoremap <buffer> f а
lnoremap <buffer> g п
lnoremap <buffer> h р
lnoremap <buffer> i ш
lnoremap <buffer> j о
lnoremap <buffer> k л
lnoremap <buffer> l д
lnoremap <buffer> m ь
lnoremap <buffer> n т
lnoremap <buffer> o щ
lnoremap <buffer> p з
lnoremap <buffer> q й
lnoremap <buffer> r к
lnoremap <buffer> s ы
lnoremap <buffer> t е
lnoremap <buffer> u г
lnoremap <buffer> v м
lnoremap <buffer> w ц
lnoremap <buffer> x ч
lnoremap <buffer> y н
lnoremap <buffer> z я
lnoremap <buffer> { Х
lnoremap <buffer> } Ъ
lnoremap <buffer> ~ Ё
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=russian-jcukenwin
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'yaml'
setlocal filetype=yaml
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetYAMLIndent(v:lnum)
setlocal indentkeys=!^F,o,O,0#,0},0],<:>,0-
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
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
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'yaml'
setlocal syntax=yaml
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
2
normal! zo
3
normal! zo
54
normal! zo
64
normal! zo
77
normal! zo
85
normal! zo
88
normal! zo
91
normal! zo
98
normal! zo
104
normal! zo
104
normal! zo
107
normal! zo
109
normal! zo
110
normal! zo
165
normal! zo
171
normal! zo
176
normal! zo
189
normal! zo
201
normal! zo
207
normal! zo
212
normal! zo
217
normal! zo
224
normal! zo
231
normal! zo
244
normal! zo
245
normal! zo
251
normal! zo
259
normal! zo
263
normal! zo
269
normal! zo
275
normal! zo
276
normal! zo
280
normal! zo
284
normal! zo
285
normal! zo
290
normal! zo
301
normal! zo
321
normal! zo
let s:l = 238 - ((12 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
238
normal! 047|
wincmd w
exe '1resize ' . ((&lines * 20 + 19) / 39)
exe 'vert 1resize ' . ((&columns * 40 + 68) / 136)
exe '2resize ' . ((&lines * 20 + 19) / 39)
exe 'vert 2resize ' . ((&columns * 39 + 68) / 136)
tabedit ~/pythonPetProjects/quest/actions.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
lnoremap <buffer> " Э
lnoremap <buffer> # №
lnoremap <buffer> $ ;
lnoremap <buffer> & ?
lnoremap <buffer> ' э
lnoremap <buffer> , б
lnoremap <buffer> . ю
lnoremap <buffer> / .
lnoremap <buffer> : Ж
lnoremap <buffer> ; ж
lnoremap <buffer> < Б
lnoremap <buffer> > Ю
lnoremap <buffer> ? ,
lnoremap <buffer> @ "
lnoremap <buffer> A Ф
lnoremap <buffer> B И
lnoremap <buffer> C С
lnoremap <buffer> D В
lnoremap <buffer> E У
lnoremap <buffer> F А
lnoremap <buffer> G П
lnoremap <buffer> H Р
lnoremap <buffer> I Ш
lnoremap <buffer> J О
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> K Л
lnoremap <buffer> L Д
lnoremap <buffer> M Ь
lnoremap <buffer> N Т
lnoremap <buffer> O Щ
lnoremap <buffer> P З
lnoremap <buffer> Q Й
lnoremap <buffer> R К
lnoremap <buffer> S Ы
lnoremap <buffer> T Е
lnoremap <buffer> U Г
lnoremap <buffer> V М
lnoremap <buffer> W Ц
lnoremap <buffer> X Ч
lnoremap <buffer> Y Н
lnoremap <buffer> Z Я
lnoremap <buffer> [ х
lnoremap <buffer> ] ъ
lnoremap <buffer> ^ :
lnoremap <buffer> ` ё
lnoremap <buffer> a ф
lnoremap <buffer> b и
lnoremap <buffer> c с
lnoremap <buffer> d в
lnoremap <buffer> e у
lnoremap <buffer> f а
lnoremap <buffer> g п
lnoremap <buffer> h р
lnoremap <buffer> i ш
lnoremap <buffer> j о
lnoremap <buffer> k л
lnoremap <buffer> l д
lnoremap <buffer> m ь
lnoremap <buffer> n т
lnoremap <buffer> o щ
lnoremap <buffer> p з
lnoremap <buffer> q й
lnoremap <buffer> r к
lnoremap <buffer> s ы
lnoremap <buffer> t е
lnoremap <buffer> u г
lnoremap <buffer> v м
lnoremap <buffer> w ц
lnoremap <buffer> x ч
lnoremap <buffer> y н
lnoremap <buffer> z я
lnoremap <buffer> { Х
lnoremap <buffer> } Ъ
lnoremap <buffer> ~ Ё
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=russian-jcukenwin
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pythoncomplete#Complete
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
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
67
normal! zo
70
normal! zo
71
normal! zo
72
normal! zo
74
normal! zo
75
normal! zo
77
normal! zo
79
normal! zo
86
normal! zo
90
normal! zo
92
normal! zo
93
normal! zo
99
normal! zo
100
normal! zo
101
normal! zo
151
normal! zo
152
normal! zo
157
normal! zo
159
normal! zo
162
normal! zo
164
normal! zo
169
normal! zo
182
normal! zo
184
normal! zo
193
normal! zo
194
normal! zo
194
normal! zo
195
normal! zo
198
normal! zo
211
normal! zo
212
normal! zo
218
normal! zo
223
normal! zo
225
normal! zo
237
normal! zo
240
normal! zo
252
normal! zo
254
normal! zo
255
normal! zo
353
normal! zo
360
normal! zo
362
normal! zo
366
normal! zo
368
normal! zo
371
normal! zo
373
normal! zo
let s:l = 212 - ((10 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
212
normal! 0112|
tabedit ~/pythonPetProjects/quest/render.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
lnoremap <buffer> " Э
lnoremap <buffer> # №
lnoremap <buffer> $ ;
lnoremap <buffer> & ?
lnoremap <buffer> ' э
lnoremap <buffer> , б
lnoremap <buffer> . ю
lnoremap <buffer> / .
lnoremap <buffer> : Ж
lnoremap <buffer> ; ж
lnoremap <buffer> < Б
lnoremap <buffer> > Ю
lnoremap <buffer> ? ,
lnoremap <buffer> @ "
lnoremap <buffer> A Ф
lnoremap <buffer> B И
lnoremap <buffer> C С
lnoremap <buffer> D В
lnoremap <buffer> E У
lnoremap <buffer> F А
lnoremap <buffer> G П
lnoremap <buffer> H Р
lnoremap <buffer> I Ш
lnoremap <buffer> J О
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> K Л
lnoremap <buffer> L Д
lnoremap <buffer> M Ь
lnoremap <buffer> N Т
lnoremap <buffer> O Щ
lnoremap <buffer> P З
lnoremap <buffer> Q Й
lnoremap <buffer> R К
lnoremap <buffer> S Ы
lnoremap <buffer> T Е
lnoremap <buffer> U Г
lnoremap <buffer> V М
lnoremap <buffer> W Ц
lnoremap <buffer> X Ч
lnoremap <buffer> Y Н
lnoremap <buffer> Z Я
lnoremap <buffer> [ х
lnoremap <buffer> ] ъ
lnoremap <buffer> ^ :
lnoremap <buffer> ` ё
lnoremap <buffer> a ф
lnoremap <buffer> b и
lnoremap <buffer> c с
lnoremap <buffer> d в
lnoremap <buffer> e у
lnoremap <buffer> f а
lnoremap <buffer> g п
lnoremap <buffer> h р
lnoremap <buffer> i ш
lnoremap <buffer> j о
lnoremap <buffer> k л
lnoremap <buffer> l д
lnoremap <buffer> m ь
lnoremap <buffer> n т
lnoremap <buffer> o щ
lnoremap <buffer> p з
lnoremap <buffer> q й
lnoremap <buffer> r к
lnoremap <buffer> s ы
lnoremap <buffer> t е
lnoremap <buffer> u г
lnoremap <buffer> v м
lnoremap <buffer> w ц
lnoremap <buffer> x ч
lnoremap <buffer> y н
lnoremap <buffer> z я
lnoremap <buffer> { Х
lnoremap <buffer> } Ъ
lnoremap <buffer> ~ Ё
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=russian-jcukenwin
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pythoncomplete#Complete
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
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=90
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
65
normal! zo
68
normal! zo
71
normal! zo
75
normal! zo
95
normal! zo
112
normal! zo
let s:l = 112 - ((34 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
112
normal! 036|
tabedit ~/pythonPetProjects/quest/quest.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
lnoremap <buffer> " Э
lnoremap <buffer> # №
lnoremap <buffer> $ ;
lnoremap <buffer> & ?
lnoremap <buffer> ' э
lnoremap <buffer> , б
lnoremap <buffer> . ю
lnoremap <buffer> / .
lnoremap <buffer> : Ж
lnoremap <buffer> ; ж
lnoremap <buffer> < Б
lnoremap <buffer> > Ю
lnoremap <buffer> ? ,
lnoremap <buffer> @ "
lnoremap <buffer> A Ф
lnoremap <buffer> B И
lnoremap <buffer> C С
lnoremap <buffer> D В
lnoremap <buffer> E У
lnoremap <buffer> F А
lnoremap <buffer> G П
lnoremap <buffer> H Р
lnoremap <buffer> I Ш
lnoremap <buffer> J О
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> K Л
lnoremap <buffer> L Д
lnoremap <buffer> M Ь
lnoremap <buffer> N Т
lnoremap <buffer> O Щ
lnoremap <buffer> P З
lnoremap <buffer> Q Й
lnoremap <buffer> R К
lnoremap <buffer> S Ы
lnoremap <buffer> T Е
lnoremap <buffer> U Г
lnoremap <buffer> V М
lnoremap <buffer> W Ц
lnoremap <buffer> X Ч
lnoremap <buffer> Y Н
lnoremap <buffer> Z Я
lnoremap <buffer> [ х
lnoremap <buffer> ] ъ
lnoremap <buffer> ^ :
lnoremap <buffer> ` ё
lnoremap <buffer> a ф
lnoremap <buffer> b и
lnoremap <buffer> c с
lnoremap <buffer> d в
lnoremap <buffer> e у
lnoremap <buffer> f а
lnoremap <buffer> g п
lnoremap <buffer> h р
lnoremap <buffer> i ш
lnoremap <buffer> j о
lnoremap <buffer> k л
lnoremap <buffer> l д
lnoremap <buffer> m ь
lnoremap <buffer> n т
lnoremap <buffer> o щ
lnoremap <buffer> p з
lnoremap <buffer> q й
lnoremap <buffer> r к
lnoremap <buffer> s ы
lnoremap <buffer> t е
lnoremap <buffer> u г
lnoremap <buffer> v м
lnoremap <buffer> w ц
lnoremap <buffer> x ч
lnoremap <buffer> y н
lnoremap <buffer> z я
lnoremap <buffer> { Х
lnoremap <buffer> } Ъ
lnoremap <buffer> ~ Ё
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=russian-jcukenwin
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=3
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pythoncomplete#Complete
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
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
25
normal! zo
26
normal! zo
105
normal! zo
106
normal! zo
118
normal! zo
119
normal! zo
150
normal! zo
160
normal! zo
216
normal! zo
let s:l = 131 - ((10 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
131
normal! 013|
tabedit ~/pythonPetProjects/quest/TZ_quest.org
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <C-CR> <Plug>OrgNewHeadingBelowAfterChildrenInsert
imap <buffer> <silent> <S-CR> <Plug>OrgNewHeadingBelowInsert
imap <buffer> <silent> <C-S-CR> <Plug>OrgNewHeadingAboveInsert
nmap <buffer> <silent> 	 <Plug>OrgToggleFoldingNormal
nmap <buffer> <silent>  <Plug>OrgNewHeadingBelowAfterChildrenNormal
nmap <buffer> <silent> , <Plug>OrgNewHeadingBelowNormal
nmap <buffer> <silent> <ir <Plug>OrgPromoteSubtreeNormal
nmap <buffer> <silent> <[[ <Plug>OrgPromoteSubtreeNormal
nmap <buffer> <silent> <ar <Plug>OrgPromoteSubtreeNormal
nmap <buffer> <silent> <ih <Plug>OrgPromoteHeadingNormal
nmap <buffer> <silent> <{ <Plug>OrgPromoteHeadingNormal
nmap <buffer> <silent> << <Plug>OrgPromoteOnHeadingNormal
nmap <buffer> <silent> <ah <Plug>OrgPromoteHeadingNormal
nmap <buffer> <silent> >ir <Plug>OrgDemoteSubtreeNormal
nmap <buffer> <silent> >]] <Plug>OrgDemoteSubtreeNormal
nmap <buffer> <silent> >ar <Plug>OrgDemoteSubtreeNormal
nmap <buffer> <silent> >ih <Plug>OrgDemoteHeadingNormal
nmap <buffer> <silent> >} <Plug>OrgDemoteHeadingNormal
nmap <buffer> <silent> >> <Plug>OrgDemoteOnHeadingNormal
nmap <buffer> <silent> >ah <Plug>OrgDemoteHeadingNormal
nmap <buffer> <silent> I <Plug>OrgEditAtFirstCharacter
omap <buffer> <silent> OR :normal VOR
omap <buffer> <silent> Or <Plug>OrgOuterTreeOperator
vmap <buffer> <silent> OR <Plug>OrgAOuterTreeVisual
vmap <buffer> <silent> Or <Plug>OrgOuterTreeVisual
omap <buffer> <silent> OH :normal VOH
omap <buffer> <silent> Oh <Plug>OrgOuterHeadingOperator
vmap <buffer> <silent> OH <Plug>OrgAOuterHeadingVisual
vmap <buffer> <silent> Oh <Plug>OrgOuterHeadingVisual
omap <buffer> <silent> [[ <Plug>OrgJumpToPreviousSkipChildrenOperator
vmap <buffer> <silent> [[ <Plug>OrgJumpToPreviousSkipChildrenVisual
nmap <buffer> <silent> [[ <Plug>OrgJumpToPreviousSkipChildrenNormal
nmap <buffer> <silent> \em <Plug>OrgExportToMarkdown
nmap <buffer> <silent> \eh <Plug>OrgExportToHTML
nmap <buffer> <silent> \el <Plug>OrgExportToLaTeX
nmap <buffer> <silent> \eb <Plug>OrgExportToBeamerPDF
nmap <buffer> <silent> \ep <Plug>OrgExportToPDF
nmap <buffer> <silent> \caL <Plug>OrgAgendaTimeline
nmap <buffer> <silent> \caA <Plug>OrgBufferAgendaWeek
nmap <buffer> <silent> \caa <Plug>OrgAgendaWeek
nmap <buffer> <silent> \caT <Plug>OrgBufferAgendaTodo
nmap <buffer> <silent> \cat <Plug>OrgAgendaTodo
nmap <buffer> <silent> \pi <Plug>OrgDateInsertTimestampInactiveWithCalendar
nmap <buffer> <silent> \pa <Plug>OrgDateInsertTimestampActiveWithCalendar
nmap <buffer> <silent> \si <Plug>OrgDateInsertTimestampInactiveCmdLine
nmap <buffer> <silent> \sa <Plug>OrgDateInsertTimestampActiveCmdLine
nmap <buffer> <silent> \ft <Plug>OrgFindTags
nmap <buffer> <silent> \st <Plug>OrgSetTags
nmap <buffer> <silent> \d <Plug>OrgTodoToggleInteractive
nmap <buffer> <silent> \ct <Plug>OrgTodoToggleNonInteractive
nmap <buffer> <silent> \cl <Plug>OrgPlainListItemNewBelow
nmap <buffer> <silent> \cL <Plug>OrgPlainListItemNewAbove
nmap <buffer> <silent> \c# <Plug>OrgCheckBoxUpdate
nmap <buffer> <silent> \cc <Plug>OrgCheckBoxToggle
nmap <buffer> <silent> \cn <Plug>OrgCheckBoxNewBelow
nmap <buffer> <silent> \cN <Plug>OrgCheckBoxNewAbove
nmap <buffer> <silent> \hn <Plug>OrgNewHeadingBelowAfterChildrenNormal
nmap <buffer> <silent> \hh <Plug>OrgNewHeadingBelowNormal
nmap <buffer> <silent> \ <Plug>OrgNewHeadingAboveNormal
nmap <buffer> <silent> \hN <Plug>OrgNewHeadingAboveNormal
nmap <buffer> <silent> \9 zM:set fdl=9
nmap <buffer> <silent> \8 zM:set fdl=8
nmap <buffer> <silent> \7 zM:set fdl=7
nmap <buffer> <silent> \6 zM:set fdl=6
nmap <buffer> <silent> \5 zM:set fdl=5
nmap <buffer> <silent> \4 zM:set fdl=4
nmap <buffer> <silent> \3 zM:set fdl=3
nmap <buffer> <silent> \2 zM:set fdl=2
nmap <buffer> <silent> \1 zM:set fdl=1
nmap <buffer> <silent> \0 zM:set fdl=0
nmap <buffer> <silent> \, <Plug>OrgGlobalToggleFoldingReverse
nmap <buffer> <silent> \. <Plug>OrgGlobalToggleFoldingNormal
omap <buffer> <silent> ]] <Plug>OrgJumpToNextSkipChildrenOperator
vmap <buffer> <silent> ]] <Plug>OrgJumpToNextSkipChildrenVisual
nmap <buffer> <silent> ]] <Plug>OrgJumpToNextSkipChildrenNormal
nmap <buffer> <silent> ^ <Plug>OrgJumpToFirstCharacter
omap <buffer> <silent> ar :normal Var
vmap <buffer> <silent> ar <Plug>OrgAInnerTreeVisual
omap <buffer> <silent> ah :normal Vah
vmap <buffer> <silent> ah <Plug>OrgAInnerHeadingVisual
nmap <buffer> <silent> go <Plug>OrgHyperlinkPreviousLink
nmap <buffer> <silent> gn <Plug>OrgHyperlinkNextLink
nmap <buffer> <silent> gil <Plug>OrgHyperlinkInsert
nmap <buffer> <silent> gyl <Plug>OrgHyperlinkCopy
nmap <buffer> <silent> gl <Plug>OrgHyperlinkFollow
omap <buffer> <silent> g} <Plug>OrgJumpToParentsSiblingOperator
omap <buffer> <silent> g{ <Plug>OrgJumpToParentOperator
vmap <buffer> <silent> g} <Plug>OrgJumpToParentsSiblingVisual
vmap <buffer> <silent> g{ <Plug>OrgJumpToParentVisual
nmap <buffer> <silent> g} <Plug>OrgJumpToParentsSiblingNormal
nmap <buffer> <silent> g{ <Plug>OrgJumpToParentNormal
omap <buffer> <silent> ir <Plug>OrgInnerTreeOperator
vmap <buffer> <silent> ir <Plug>OrgInnerTreeVisual
omap <buffer> <silent> ih <Plug>OrgInnerHeadingOperator
vmap <buffer> <silent> ih <Plug>OrgInnerHeadingVisual
nmap <buffer> <silent> m]] <Plug>OrgMoveSubtreeDownward
nmap <buffer> <silent> m} <Plug>OrgMoveHeadingDownward
nmap <buffer> <silent> m[[ <Plug>OrgMoveSubtreeUpward
nmap <buffer> <silent> m{ <Plug>OrgMoveHeadingUpward
omap <buffer> <silent> { <Plug>OrgJumpToPreviousOperator
vmap <buffer> <silent> { <Plug>OrgJumpToPreviousVisual
nmap <buffer> <silent> { <Plug>OrgJumpToPreviousNormal
omap <buffer> <silent> } <Plug>OrgJumpToNextOperator
vmap <buffer> <silent> } <Plug>OrgJumpToNextVisual
nmap <buffer> <silent> } <Plug>OrgJumpToNextNormal
nmap <buffer> <silent> <C-S-Left> <Plug>OrgTodoSetBackward
nmap <buffer> <silent> <C-S-Right> <Plug>OrgTodoSetForward
nmap <buffer> <silent> <S-Left> <Plug>OrgTodoBackward
nmap <buffer> <silent> <S-Right> <Plug>OrgTodoForward
nmap <buffer> <silent> <C-CR> <Plug>OrgNewHeadingBelowAfterChildrenNormal
nmap <buffer> <silent> <S-CR> <Plug>OrgNewHeadingBelowNormal
nmap <buffer> <silent> <C-S-CR> <Plug>OrgNewHeadingAboveNormal
nmap <buffer> <silent> <S-Tab> <Plug>OrgToggleFoldingReverse
imap <buffer> <silent>  <Plug>OrgPromoteOnHeadingInsert
imap <buffer> <silent>  <Plug>OrgDemoteOnHeadingInsert
lnoremap <buffer> " Э
lnoremap <buffer> # №
lnoremap <buffer> $ ;
lnoremap <buffer> & ?
lnoremap <buffer> ' э
lnoremap <buffer> , б
lnoremap <buffer> . ю
lnoremap <buffer> / .
lnoremap <buffer> : Ж
lnoremap <buffer> ; ж
lnoremap <buffer> < Б
lnoremap <buffer> > Ю
lnoremap <buffer> ? ,
lnoremap <buffer> @ "
lnoremap <buffer> A Ф
lnoremap <buffer> B И
lnoremap <buffer> C С
lnoremap <buffer> D В
lnoremap <buffer> E У
lnoremap <buffer> F А
lnoremap <buffer> G П
lnoremap <buffer> H Р
lnoremap <buffer> I Ш
lnoremap <buffer> J О
lnoremap <buffer> K Л
lnoremap <buffer> L Д
lnoremap <buffer> M Ь
lnoremap <buffer> N Т
lnoremap <buffer> O Щ
lnoremap <buffer> P З
lnoremap <buffer> Q Й
lnoremap <buffer> R К
lnoremap <buffer> S Ы
lnoremap <buffer> T Е
lnoremap <buffer> U Г
lnoremap <buffer> V М
lnoremap <buffer> W Ц
lnoremap <buffer> X Ч
lnoremap <buffer> Y Н
lnoremap <buffer> Z Я
lnoremap <buffer> [ х
lnoremap <buffer> ] ъ
lnoremap <buffer> ^ :
lnoremap <buffer> ` ё
lnoremap <buffer> a ф
lnoremap <buffer> b и
lnoremap <buffer> c с
lnoremap <buffer> d в
lnoremap <buffer> e у
lnoremap <buffer> f а
lnoremap <buffer> g п
lnoremap <buffer> h р
lnoremap <buffer> i ш
lnoremap <buffer> j о
lnoremap <buffer> k л
lnoremap <buffer> l д
lnoremap <buffer> m ь
lnoremap <buffer> n т
lnoremap <buffer> o щ
lnoremap <buffer> p з
lnoremap <buffer> q й
lnoremap <buffer> r к
lnoremap <buffer> s ы
lnoremap <buffer> t е
lnoremap <buffer> u г
lnoremap <buffer> v м
lnoremap <buffer> w ц
lnoremap <buffer> x ч
lnoremap <buffer> y н
lnoremap <buffer> z я
lnoremap <buffer> { Х
lnoremap <buffer> } Ъ
lnoremap <buffer> ~ Ё
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=russian-jcukenwin
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:*,b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=nc
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'org'
setlocal filetype=org
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=GetOrgFolding()
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=GetOrgFoldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetOrgIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
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
setlocal shiftwidth=6
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'org'
setlocal syntax=org
endif
setlocal tabstop=6
setlocal tagcase=
setlocal tags=
setlocal textwidth=77
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
1
normal! zo
2
normal! zo
6
normal! zo
38
normal! zo
48
normal! zo
let s:l = 54 - ((53 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
54
normal! 013|
tabedit ~/pythonPetProjects/weather/weather.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
lnoremap <buffer> " Э
lnoremap <buffer> # №
lnoremap <buffer> $ ;
lnoremap <buffer> & ?
lnoremap <buffer> ' э
lnoremap <buffer> , б
lnoremap <buffer> . ю
lnoremap <buffer> / .
lnoremap <buffer> : Ж
lnoremap <buffer> ; ж
lnoremap <buffer> < Б
lnoremap <buffer> > Ю
lnoremap <buffer> ? ,
lnoremap <buffer> @ "
lnoremap <buffer> A Ф
lnoremap <buffer> B И
lnoremap <buffer> C С
lnoremap <buffer> D В
lnoremap <buffer> E У
lnoremap <buffer> F А
lnoremap <buffer> G П
lnoremap <buffer> H Р
lnoremap <buffer> I Ш
lnoremap <buffer> J О
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> K Л
lnoremap <buffer> L Д
lnoremap <buffer> M Ь
lnoremap <buffer> N Т
lnoremap <buffer> O Щ
lnoremap <buffer> P З
lnoremap <buffer> Q Й
lnoremap <buffer> R К
lnoremap <buffer> S Ы
lnoremap <buffer> T Е
lnoremap <buffer> U Г
lnoremap <buffer> V М
lnoremap <buffer> W Ц
lnoremap <buffer> X Ч
lnoremap <buffer> Y Н
lnoremap <buffer> Z Я
lnoremap <buffer> [ х
lnoremap <buffer> ] ъ
lnoremap <buffer> ^ :
lnoremap <buffer> ` ё
lnoremap <buffer> a ф
lnoremap <buffer> b и
lnoremap <buffer> c с
lnoremap <buffer> d в
lnoremap <buffer> e у
lnoremap <buffer> f а
lnoremap <buffer> g п
lnoremap <buffer> h р
lnoremap <buffer> i ш
lnoremap <buffer> j о
lnoremap <buffer> k л
lnoremap <buffer> l д
lnoremap <buffer> m ь
lnoremap <buffer> n т
lnoremap <buffer> o щ
lnoremap <buffer> p з
lnoremap <buffer> q й
lnoremap <buffer> r к
lnoremap <buffer> s ы
lnoremap <buffer> t е
lnoremap <buffer> u г
lnoremap <buffer> v м
lnoremap <buffer> w ц
lnoremap <buffer> x ч
lnoremap <buffer> y н
lnoremap <buffer> z я
lnoremap <buffer> { Х
lnoremap <buffer> } Ъ
lnoremap <buffer> ~ Ё
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=russian-jcukenwin
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pythoncomplete#Complete
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
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=90
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
10
normal! zo
13
normal! zo
17
normal! zo
21
normal! zo
29
normal! zo
31
normal! zo
43
normal! zo
45
normal! zo
45
normal! zo
48
normal! zo
let s:l = 44 - ((32 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
44
normal! 021|
tabnext 6
set stal=1
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

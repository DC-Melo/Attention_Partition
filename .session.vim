let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <Nul> <C-Space>
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
imap <M-p> :call SearchInvalidComment(1)a
imap <M-n> :call SearchInvalidComment(0)a
imap <M-c> :call JCommentWriter()
inoremap <silent> <C-T><C-L> =UltiSnips#ListSnippets()
inoremap <silent> <C-T><C-T> =UltiSnips#ExpandSnippet()
noremap! <Plug>(slash-nop) <Nop>
inoremap <Plug>(slash-prev) <Nop>
cnoremap <Plug>(slash-cr) 
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
inoremap <silent> <SNR>38_AutoPairsReturn =AutoPairsReturn()
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
cnoremap <C-A> <Home>
inoremap <C-L> <Right>
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
inoremap <silent> <F12>  :ShowColorScheme
inoremap <silent> <F11>  :RandomColorScheme
inoremap <silent> <F10>  :NextColorScheme
inoremap <silent> <F9>  :PreviousColorScheme
noremap <silent>  :call smooth_scroll#up(&scroll*2, 0, 4)
noremap <silent>  :call smooth_scroll#down(&scroll, 0, 2)
noremap <silent>  :call smooth_scroll#down(&scroll*2, 0, 4)
snoremap <silent>  "_c
nnoremap  h
nnoremap <NL> i
nnoremap  k
nnoremap  l
xnoremap <silent>  :call multiple_cursors#new("v", 0)
nnoremap <silent>  :call multiple_cursors#new("n", 1)
nnoremap <silent>  :NextBuffer
nnoremap <silent>  :PreviousBuffer
snoremap  "_c
snoremap <silent>  :call UltiSnips#ListSnippets()
xnoremap <silent>  :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent>  :call UltiSnips#ExpandSnippet()
noremap <silent>  :call smooth_scroll#up(&scroll, 0, 2)
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap <silent> '[ :call signature#mark#Goto("prev", "line", "alpha")
nnoremap <silent> '] :call signature#mark#Goto("next", "line", "alpha")
map ,rwp <Plug>RestoreWinPosn
map ,swp <Plug>SaveWinPosn
map ,ds <Plug>DrawItStop
map ,di <Plug>DrawItStart
nnoremap ,sm :GSessionListLocal
nnoremap ,sE :GSessionEliminateAll
nnoremap ,se :GSessionEliminateCurrent
nnoremap ,sL :NamedSessionLoad
nnoremap ,sl :NamedSessionLoadCwd
nnoremap ,sN :NamedSessionMake
nnoremap ,sn :NamedSessionMakeCwd
nnoremap ,sS :GSessionMake
nnoremap ,ss :GSessionMakeLocal
map ,, <Plug>(easymotion-prefix)
nnoremap <silent> ,b :LeaderfBuffer
vnoremap ,d "_d
nnoremap ,P Ap
vnoremap ,P "_dikpk
vnoremap ,p "_dikpkJJ
nnoremap ,O O
nnoremap ,gg :GV?
nnoremap ,G :GV!
nnoremap ,g :GV
nnoremap ,= :Tab /=
nnoremap ,l :Tab /|
nnoremap ,F :Ack! 
nnoremap ,f :LeaderfFile .
nmap ,w <Plug>(easymotion-overwin-w)
vmap ,w <Plug>(easymotion-bd-w)
omap ,w <Plug>(easymotion-bd-w)
nnoremap <silent> ,t :TagbarToggle
nnoremap ,ff :YcmCompleter FixIt
nnoremap ,o o
nnoremap ,u :YcmCompleter GoToDeclaration
nnoremap <silent> ,n :NERDTreeToggle
nnoremap ,r :ReplaceTo 
nnoremap <silent> ,D :BufOnly
nnoremap ,d "_d
xnoremap ,,t d :GenTryCatch
nnoremap ,,t dd :GenTryCatch
nnoremap ,,if :FormatIf
nnoremap ,,fp :FormatFunParam
nnoremap <silent> ,a :Switch
nnoremap ,U :GoToFunImpl
nnoremap ,p ikpkJJ
nnoremap ,y :CopyCode
nnoremap ,,p "+p
vmap ,,y "+y
nnoremap ,,c :PlugClean
nnoremap ,,u :PlugUpdate
nnoremap ,,i :PlugInstall
nnoremap ,s :source $MYVIMRC
nnoremap ,H :execute ":help " . expand("<cword>")
nnoremap ,h :view +let\ &l:modifiable=0 ~/.vimplus/help.md
nnoremap ,vp :edit ~/.vimrc.custom.plugins
nnoremap ,vc :edit ~/.vimrc.custom.config
nnoremap ,e :edit $MYVIMRC
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
imap ð :call SearchInvalidComment(1)a
imap î :call SearchInvalidComment(0)a
imap ã :call JCommentWriter()
nnoremap C :ChangeText
nnoremap D :DeleteText
omap F <Plug>(clever-f-F)
xmap F <Plug>(clever-f-F)
nmap F <Plug>(clever-f-F)
xmap S <Plug>VSurround
omap T <Plug>(clever-f-T)
xmap T <Plug>(clever-f-T)
nmap T <Plug>(clever-f-T)
nnoremap Y :CopyText
nnoremap <silent> [= :call signature#marker#Goto("prev", "any",  v:count)
nnoremap <silent> [- :call signature#marker#Goto("prev", "same", v:count)
nnoremap <silent> [` :call signature#mark#Goto("prev", "spot", "pos")
nnoremap <silent> [' :call signature#mark#Goto("prev", "line", "pos")
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap <silent> ]= :call signature#marker#Goto("next", "any",  v:count)
nnoremap <silent> ]- :call signature#marker#Goto("next", "same", v:count)
nnoremap <silent> ]` :call signature#mark#Goto("next", "spot", "pos")
nnoremap <silent> ]' :call signature#mark#Goto("next", "line", "pos")
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
nnoremap <silent> `[ :call signature#mark#Goto("prev", "spot", "alpha")
nnoremap <silent> `] :call signature#mark#Goto("next", "spot", "alpha")
omap a, <Plug>(textobj-parameter-a)
xmap a, <Plug>(textobj-parameter-a)
omap aF <Plug>(textobj-function-A)
xmap aF <Plug>(textobj-function-A)
omap af <Plug>(textobj-function-a)
xmap af <Plug>(textobj-function-a)
omap ay <Plug>(textobj-syntax-a)
xmap ay <Plug>(textobj-syntax-a)
omap ai <Plug>(textobj-indent-a)
xmap ai <Plug>(textobj-indent-a)
omap aI <Plug>(textobj-indent-same-a)
xmap aI <Plug>(textobj-indent-same-a)
xmap a% <Plug>(MatchitVisualTextObject)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nnoremap <silent> dm :call signature#utils#Remove(v:count)
nmap ds <Plug>Dsurround
omap f <Plug>(clever-f-f)
xmap f <Plug>(clever-f-f)
nmap f <Plug>(clever-f-f)
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xnoremap <silent> g<M-n> :call multiple_cursors#select_all("v", 0)
xnoremap <silent> gî :call multiple_cursors#select_all("v", 0)
nnoremap <silent> g<M-n> :call multiple_cursors#select_all("n", 0)
nnoremap <silent> gî :call multiple_cursors#select_all("n", 0)
xnoremap <silent> g<C-N> :call multiple_cursors#new("v", 0)
xnoremap <silent> g :call multiple_cursors#new("v", 0)
nnoremap <silent> g<C-N> :call multiple_cursors#new("n", 0)
nnoremap <silent> g :call multiple_cursors#new("n", 0)
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
xmap gS <Plug>VgSurround
map g/ <Plug>(incsearch-stay)
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
omap i, <Plug>(textobj-parameter-i)
xmap i, <Plug>(textobj-parameter-i)
omap i2, <Plug>(textobj-parameter-greedy-i)
xmap i2, <Plug>(textobj-parameter-greedy-i)
omap if <Plug>(textobj-function-i)
xmap if <Plug>(textobj-function-i)
omap iF <Plug>(textobj-function-I)
xmap iF <Plug>(textobj-function-I)
omap iy <Plug>(textobj-syntax-i)
xmap iy <Plug>(textobj-syntax-i)
omap ii <Plug>(textobj-indent-i)
xmap ii <Plug>(textobj-indent-i)
omap iI <Plug>(textobj-indent-same-i)
xmap iI <Plug>(textobj-indent-same-i)
nnoremap <silent> m? :call signature#marker#List(v:count, 0)
nnoremap <silent> m/ :call signature#mark#List(0, 0)
nnoremap <silent> m<BS> :call signature#marker#Purge()
nnoremap <silent> m  :call signature#mark#Purge("all")
nnoremap <silent> m- :call signature#mark#Purge("line")
nnoremap <silent> m. :call signature#mark#ToggleAtLine()
nnoremap <silent> m, :call signature#mark#Toggle("next")
nnoremap <silent> m :call signature#utils#Input()
xnoremap <expr> rev edit#reverse#reverse_text()
nnoremap <expr> rev edit#reverse#reverse_text()
xnoremap <expr> rr edit#replace#replace_text()
nnoremap <expr> rr edit#replace#replace_text()
omap t <Plug>(clever-f-t)
xmap t <Plug>(clever-f-t)
nmap t <Plug>(clever-f-t)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <SNR>160_: :=v:count ? v:count : ''
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
map <M-p> :call SearchInvalidComment(1)
map <M-c> :call JCommentWriter()
nnoremap <silent> <Plug>(JavaComplete-Imports-SortImports) :call javacomplete#imports#SortImports()
nnoremap <silent> <Plug>(JavaComplete-Generate-ClassInFile) :call javacomplete#newclass#CreateInFile()
nnoremap <silent> <Plug>(JavaComplete-Generate-NewClass) :call javacomplete#newclass#CreateClass()
nnoremap <silent> <Plug>(JavaComplete-Generate-DefaultConstructor) :call javacomplete#generators#GenerateConstructor(1)
nnoremap <silent> <Plug>(JavaComplete-Generate-Constructor) :call javacomplete#generators#GenerateConstructor(0)
nnoremap <silent> <Plug>(JavaComplete-Generate-EqualsAndHashCode) :call javacomplete#generators#GenerateEqualsAndHashCode()
nnoremap <silent> <Plug>(JavaComplete-Generate-ToString) :call javacomplete#generators#GenerateToString()
vnoremap <silent> <Plug>(JavaComplete-Generate-AccessorSetterGetter) :call javacomplete#generators#Accessor('sg')
vnoremap <silent> <Plug>(JavaComplete-Generate-AccessorGetter) :call javacomplete#generators#Accessor('g')
vnoremap <silent> <Plug>(JavaComplete-Generate-AccessorSetter) :call javacomplete#generators#Accessor('s')
nnoremap <silent> <Plug>(JavaComplete-Generate-AccessorSetterGetter) :call javacomplete#generators#Accessor('sg')
nnoremap <silent> <Plug>(JavaComplete-Generate-AccessorGetter) :call javacomplete#generators#Accessor('g')
nnoremap <silent> <Plug>(JavaComplete-Generate-AccessorSetter) :call javacomplete#generators#Accessor('s')
nnoremap <silent> <Plug>(JavaComplete-Generate-Accessors) :call javacomplete#generators#Accessors()
nnoremap <silent> <Plug>(JavaComplete-Generate-AbstractMethods) :call javacomplete#generators#AbstractDeclaration()
nnoremap <silent> <Plug>(JavaComplete-Imports-AddSmart) :call javacomplete#imports#Add(1)
nnoremap <silent> <Plug>(JavaComplete-Imports-Add) :call javacomplete#imports#Add()
nnoremap <silent> <Plug>(JavaComplete-Imports-RemoveUnused) :call javacomplete#imports#RemoveUnused()
nnoremap <silent> <Plug>(JavaComplete-Imports-AddMissing) :call javacomplete#imports#AddMissing()
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
noremap <silent> <Plug>DrawItStop :set lz:call DrawIt#DrawItStop():set nolz
noremap <silent> <Plug>DrawItStart :set lz:call DrawIt#DrawItStart():set nolz
map <M-n> :call SearchInvalidComment(0)
xnoremap <silent> <C-M> :call multiple_cursors#new("v", 0)
nnoremap <silent> <C-M> :call multiple_cursors#new("n", 1)
snoremap <C-R> "_c
snoremap <silent> <C-H> "_c
snoremap <silent> <Del> "_c
snoremap <silent> <BS> "_c
snoremap <silent> <C-T><C-L> :call UltiSnips#ListSnippets()
xnoremap <silent> <C-T><C-T> :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> <C-T><C-T> :call UltiSnips#ExpandSnippet()
noremap <silent> <expr> <Plug>(clever-f-repeat-back) clever_f#repeat(1)
noremap <silent> <expr> <Plug>(clever-f-repeat-forward) clever_f#repeat(0)
noremap <silent> <expr> <Plug>(clever-f-reset) clever_f#reset()
noremap <silent> <expr> <Plug>(clever-f-T) clever_f#find_with('T')
noremap <silent> <expr> <Plug>(clever-f-t) clever_f#find_with('t')
noremap <silent> <expr> <Plug>(clever-f-F) clever_f#find_with('F')
noremap <silent> <expr> <Plug>(clever-f-f) clever_f#find_with('f')
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
nnoremap <silent> <Plug>SurroundRepeat .
noremap <Plug>(_incsearch-g#) g#
noremap <Plug>(_incsearch-g*) g*
noremap <Plug>(_incsearch-#) #
noremap <Plug>(_incsearch-*) *
noremap <expr> <Plug>(_incsearch-N) g:incsearch#consistent_n_direction && !v:searchforward ? 'n' : 'N'
noremap <expr> <Plug>(_incsearch-n) g:incsearch#consistent_n_direction && !v:searchforward ? 'N' : 'n'
map <Plug>(incsearch-nohl-g#) <Plug>(incsearch-nohl)<Plug>(_incsearch-g#)
map <Plug>(incsearch-nohl-g*) <Plug>(incsearch-nohl)<Plug>(_incsearch-g*)
map <Plug>(incsearch-nohl-#) <Plug>(incsearch-nohl)<Plug>(_incsearch-#)
map <Plug>(incsearch-nohl-*) <Plug>(incsearch-nohl)<Plug>(_incsearch-*)
map <Plug>(incsearch-nohl-N) <Plug>(incsearch-nohl)<Plug>(_incsearch-N)
map <Plug>(incsearch-nohl-n) <Plug>(incsearch-nohl)<Plug>(_incsearch-n)
noremap <expr> <Plug>(incsearch-nohl2) incsearch#autocmd#auto_nohlsearch(2)
noremap <expr> <Plug>(incsearch-nohl0) incsearch#autocmd#auto_nohlsearch(0)
noremap <expr> <Plug>(incsearch-nohl) incsearch#autocmd#auto_nohlsearch(1)
noremap <silent> <expr> <Plug>(incsearch-stay) incsearch#go({'command': '/', 'is_stay': 1})
noremap <silent> <expr> <Plug>(incsearch-backward) incsearch#go({'command': '?'})
noremap <silent> <expr> <Plug>(incsearch-forward) incsearch#go({'command': '/'})
map <silent> <Plug>(easymotion-prefix)N <Plug>(easymotion-N)
map <silent> <Plug>(easymotion-prefix)n <Plug>(easymotion-n)
map <silent> <Plug>(easymotion-prefix)k <Plug>(easymotion-k)
map <silent> <Plug>(easymotion-prefix)j <Plug>(easymotion-j)
map <silent> <Plug>(easymotion-prefix)gE <Plug>(easymotion-gE)
map <silent> <Plug>(easymotion-prefix)ge <Plug>(easymotion-ge)
map <silent> <Plug>(easymotion-prefix)E <Plug>(easymotion-E)
map <silent> <Plug>(easymotion-prefix)e <Plug>(easymotion-e)
map <silent> <Plug>(easymotion-prefix)B <Plug>(easymotion-B)
map <silent> <Plug>(easymotion-prefix)b <Plug>(easymotion-b)
map <silent> <Plug>(easymotion-prefix)W <Plug>(easymotion-W)
map <silent> <Plug>(easymotion-prefix)w <Plug>(easymotion-w)
map <silent> <Plug>(easymotion-prefix)T <Plug>(easymotion-T)
map <silent> <Plug>(easymotion-prefix)t <Plug>(easymotion-t)
map <silent> <Plug>(easymotion-prefix)s <Plug>(easymotion-s)
map <silent> <Plug>(easymotion-prefix)F <Plug>(easymotion-F)
map <silent> <Plug>(easymotion-prefix)f <Plug>(easymotion-f)
xnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(1)
nnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
snoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
onoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
noremap <silent> <Plug>(easymotion-dotrepeat) :call EasyMotion#DotRepeat()
xnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(1)
nnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
snoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
onoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
xnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(1,1)
nnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
snoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
onoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
xnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(1,0)
nnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
snoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
onoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
xnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(1,0)
nnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
snoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
onoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
xnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(1,0)
nnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
snoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
onoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
xnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
snoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
onoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
xnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(1,1)
nnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
snoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
onoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
xnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(1,1)
nnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
snoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
onoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
xnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(1,0)
nnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
snoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
onoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
xnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(1,1)
nnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
snoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
onoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
xnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
snoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
onoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
xnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(1,0,1)
nnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
snoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
onoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
xnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(1,0,0)
nnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
snoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
onoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
xnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(1,2,0)
nnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
snoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
onoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
xnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(1,1,1)
nnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
snoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
onoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
xnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(1,1,0)
nnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
snoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
onoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
xnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(1,0)
nnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
snoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
onoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
xnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(1,1)
nnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
snoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
onoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
xnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(1,0)
nnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
snoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
onoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
xnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(1,1)
nnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
snoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
onoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
xnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(1,0)
nnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
snoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
onoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
xnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(1,2)
nnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
snoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
onoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
xnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(1,2)
nnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
snoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
onoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
xnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(1,2)
nnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
snoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
onoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
xnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(1,1)
nnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
snoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
onoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
xnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(1,0)
nnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
snoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
onoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
xnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
snoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
onoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
xnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(1,1)
nnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
snoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
onoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
xnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(1,0)
nnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
snoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
onoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
xnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
snoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
onoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
xnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(1,1)
nnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
snoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
onoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
xnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(1,0)
nnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
snoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
onoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(1,2)
nnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
snoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
onoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
xnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(1,1)
nnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
snoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
onoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
xnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(1,0)
nnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
snoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
onoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(1,2)
nnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
snoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
onoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
xnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(1,1)
nnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
snoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
onoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
nnoremap <silent> <Plug>(easymotion-overwin-w) :call EasyMotion#overwin#w()
nnoremap <silent> <Plug>(easymotion-overwin-line) :call EasyMotion#overwin#line()
nnoremap <silent> <Plug>(easymotion-overwin-f2) :call EasyMotion#OverwinF(2)
nnoremap <silent> <Plug>(easymotion-overwin-f) :call EasyMotion#OverwinF(1)
xnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,1,0)
nnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
snoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
onoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
xnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,1,0)
nnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
snoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
onoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
xnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
snoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
onoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
xnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,1,0)
nnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
snoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
onoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
xnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
snoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
onoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
xnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,1,0)
nnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
snoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
onoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,1,0)
nnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
snoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
onoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
snoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
onoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
xnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,1,0)
nnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
snoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
onoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
xnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,1,0)
nnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
snoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
onoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
xnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
snoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
onoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
xnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,1,0)
nnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
snoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
onoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,1,1)
nnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
snoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
onoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,1,1)
nnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
snoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
onoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
xnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
xnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
snoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
onoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
snoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
onoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,1,1)
nnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
snoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
onoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,1,1)
nnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
snoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
onoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
snoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
onoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
xnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
snoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
onoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
vnoremap <silent> <Plug>LeaderfGtagsGrep :=leaderf#Gtags#startCmdline(2, 1, 'g')
vnoremap <silent> <Plug>LeaderfGtagsSymbol :=leaderf#Gtags#startCmdline(2, 1, 's')
vnoremap <silent> <Plug>LeaderfGtagsReference :=leaderf#Gtags#startCmdline(2, 1, 'r')
vnoremap <silent> <Plug>LeaderfGtagsDefinition :=leaderf#Gtags#startCmdline(2, 1, 'd')
nnoremap <Plug>LeaderfGtagsGrep :=leaderf#Gtags#startCmdline(0, 1, 'g')
onoremap <Plug>LeaderfGtagsGrep :=leaderf#Gtags#startCmdline(0, 1, 'g')
nnoremap <Plug>LeaderfGtagsSymbol :=leaderf#Gtags#startCmdline(0, 1, 's')
onoremap <Plug>LeaderfGtagsSymbol :=leaderf#Gtags#startCmdline(0, 1, 's')
nnoremap <Plug>LeaderfGtagsReference :=leaderf#Gtags#startCmdline(0, 1, 'r')
onoremap <Plug>LeaderfGtagsReference :=leaderf#Gtags#startCmdline(0, 1, 'r')
nnoremap <Plug>LeaderfGtagsDefinition :=leaderf#Gtags#startCmdline(0, 1, 'd')
onoremap <Plug>LeaderfGtagsDefinition :=leaderf#Gtags#startCmdline(0, 1, 'd')
vnoremap <silent> <Plug>LeaderfRgBangVisualRegexBoundary :=leaderf#Rg#startCmdline(2, 1, 1, 1)
vnoremap <silent> <Plug>LeaderfRgBangVisualRegexNoBoundary :=leaderf#Rg#startCmdline(2, 1, 1, 0)
vnoremap <silent> <Plug>LeaderfRgBangVisualLiteralBoundary :=leaderf#Rg#startCmdline(2, 1, 0, 1)
vnoremap <silent> <Plug>LeaderfRgBangVisualLiteralNoBoundary :=leaderf#Rg#startCmdline(2, 1, 0, 0)
vnoremap <silent> <Plug>LeaderfRgVisualRegexBoundary :=leaderf#Rg#startCmdline(2, 0, 1, 1)
vnoremap <silent> <Plug>LeaderfRgVisualRegexNoBoundary :=leaderf#Rg#startCmdline(2, 0, 1, 0)
vnoremap <silent> <Plug>LeaderfRgVisualLiteralBoundary :=leaderf#Rg#startCmdline(2, 0, 0, 1)
vnoremap <silent> <Plug>LeaderfRgVisualLiteralNoBoundary :=leaderf#Rg#startCmdline(2, 0, 0, 0)
noremap <Plug>LeaderfRgWORDRegexBoundary :=leaderf#Rg#startCmdline(1, 0, 1, 1)
noremap <Plug>LeaderfRgWORDRegexNoBoundary :=leaderf#Rg#startCmdline(1, 0, 1, 0)
noremap <Plug>LeaderfRgWORDLiteralBoundary :=leaderf#Rg#startCmdline(1, 0, 0, 1)
noremap <Plug>LeaderfRgWORDLiteralNoBoundary :=leaderf#Rg#startCmdline(1, 0, 0, 0)
noremap <Plug>LeaderfRgBangCwordRegexBoundary :=leaderf#Rg#startCmdline(0, 1, 1, 1)
noremap <Plug>LeaderfRgBangCwordRegexNoBoundary :=leaderf#Rg#startCmdline(0, 1, 1, 0)
noremap <Plug>LeaderfRgBangCwordLiteralBoundary :=leaderf#Rg#startCmdline(0, 1, 0, 1)
noremap <Plug>LeaderfRgBangCwordLiteralNoBoundary :=leaderf#Rg#startCmdline(0, 1, 0, 0)
noremap <Plug>LeaderfRgCwordRegexBoundary :=leaderf#Rg#startCmdline(0, 0, 1, 1)
noremap <Plug>LeaderfRgCwordRegexNoBoundary :=leaderf#Rg#startCmdline(0, 0, 1, 0)
noremap <Plug>LeaderfRgCwordLiteralBoundary :=leaderf#Rg#startCmdline(0, 0, 0, 1)
noremap <Plug>LeaderfRgCwordLiteralNoBoundary :=leaderf#Rg#startCmdline(0, 0, 0, 0)
noremap <Plug>LeaderfRgPrompt :Leaderf rg -e 
noremap <silent> <Plug>LeaderfMruCwdFullScreen :Leaderf mru --fullScreen
noremap <silent> <Plug>LeaderfMruCwdRight :Leaderf mru --right
noremap <silent> <Plug>LeaderfMruCwdLeft :Leaderf mru --left
noremap <silent> <Plug>LeaderfMruCwdBottom :Leaderf mru --bottom
noremap <silent> <Plug>LeaderfMruCwdTop :Leaderf mru --top
noremap <silent> <Plug>LeaderfBufferFullScreen :Leaderf buffer --fullScreen
noremap <silent> <Plug>LeaderfBufferRight :Leaderf buffer --right
noremap <silent> <Plug>LeaderfBufferLeft :Leaderf buffer --left
noremap <silent> <Plug>LeaderfBufferBottom :Leaderf buffer --bottom
noremap <silent> <Plug>LeaderfBufferTop :Leaderf buffer --top
noremap <silent> <Plug>LeaderfFileFullScreen :Leaderf file --fullScreen
noremap <silent> <Plug>LeaderfFileRight :Leaderf file --right
noremap <silent> <Plug>LeaderfFileLeft :Leaderf file --left
noremap <silent> <Plug>LeaderfFileBottom :Leaderf file --bottom
noremap <silent> <Plug>LeaderfFileTop :Leaderf file --top
nnoremap <silent> <Plug>(startify-open-buffers) :call startify#open_buffers()
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
noremap <silent> <C-F> :call smooth_scroll#down(&scroll*2, 0, 4)
noremap <silent> <C-B> :call smooth_scroll#up(&scroll*2, 0, 4)
noremap <silent> <C-D> :call smooth_scroll#down(&scroll, 0, 2)
noremap <silent> <C-U> :call smooth_scroll#up(&scroll, 0, 2)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
nnoremap <silent> <C-N> :NextBuffer
nnoremap <silent> <C-P> :PreviousBuffer
nnoremap <silent> <F12> :ShowColorScheme
nnoremap <silent> <F11> :RandomColorScheme
nnoremap <silent> <F10> :NextColorScheme
nnoremap <silent> <F9> :PreviousColorScheme
nnoremap <C-L> l
nnoremap <C-H> h
nnoremap <C-K> k
nnoremap <C-J> i
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v')m'gv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
cnoremap  <Home>
cnoremap  <Left>
cnoremap  <Right>
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr> 	 pumvisible() ? "\" : "\	"
inoremap  <Right>
imap  <Plug>DiscretionaryEnd
cnoremap  <Down>
cnoremap  <Up>
imap  <Plug>Isurround
inoremap <silent>  =UltiSnips#ListSnippets()
inoremap <silent>  =UltiSnips#ExpandSnippet()
cnoremap f <S-Right>
cnoremap b <S-Left>
map ð :call SearchInvalidComment(1)
map ã :call JCommentWriter()
map î :call SearchInvalidComment(0)
iabbr }- }h%?\w:nohl:call JCommentWriter()
cabbr tsfile !trash %:p:h/name.java
cabbr tcfile !touch %:p:h/name.java
cabbr figlet r!figlet -w 90 -f big -c DC.Melo 2021/08/07
cabbr mks execute 'mksession! .' . fnamemodify(getcwd(), ':t') . '.session.vim'
cabbr ctags !ctags --recurse=yes --exclude=.git --exclude=BUILD --languages=java,python -o .tags .
cabbr crn r! for i in $(seq 1 20); do echo -e -n "\# ${i} $((RANDOM\%10)), \n"; done " create random number
cabbr csn for i in range(1,10) | if i > 2 | put ='192.168.0.'.i | endif | endfor " create serial number
cabbr clnlz1 %s/^/\=strpart(line('.').' ', 0, 4)/g                                      " create line number
cabbr clnlz g/^/exec 's/^/'.strpart(line('.').' ', 0, 4)                               " create line number
cabbr addlinenum %s/^/\=line('.')."\t"/                                                     " create line number
cabbr calcexp s/.*/\=submatch(0).'='.CalcExp(submatch(0))/
cabbr sum2 r!awk '{sum+=$6} END {print("Total:",sum)}' %                              " add column value
cabbr sum1 %!awk -F '|' '{print; sum+=$6}; END {print("Total:",sum)}'                " add column value
cabbr spreg let @b=substitute(@b,'\n','\\r','g') | let @n=substitute(@o,'\n','\\r','g') | let @e=substitute(@e,'\n','\\r','g') | let @o=substitute(@o,'\n','\\n','g') 
cabbr s2reg execute '%s/'.@o.'/'.@b.@n.@e.'/gc'                                        " substitute with register
cabbr talz put =map(range(1,150), 'printf(''%04d'', v:val)')                          " add leading zero
cabbr tf2c %s/regex/\= function(submatch(1))/g                                       " translate function
cabbr th2o %s/0[xX]\x\+/\=str2nr(submatch(0), 16)/g                                  " translate hex to oct
cabbr to2h %s/\d\+/\='%'.printf("0x%x",submatch(0))/g                                " translate oct to hex
cabbr sas %s/{".*"}/\=substitute(submatch(0),'\s\+','","','g')/gc                    " substitute and then substitute
cabbr s2s %s/\(AAA.*\)\s\+\(.*BBB\)/\1\2/gc                                          " substitute a with b
cabbr s2iln let S4I=MakeSearchIndex4(-1) | %s/^\d\+/\=S4I(0,5).'_'.submatch(0)/gc    " substitute with index with leading 0000 
cabbr s2ilz let SI=MakeSearchIndex(-1) | %s/^\d\+/\=SI(0,5).'_'.submatch(0)/gc        " substitute with index with leading 0000 
cabbr s2sn2 let n=[0]|%s/Id="I"/\='Id="'.map(n,'v:val+1')[0].'"'/g                    " substitute serial number with register
cabbr rq call setreg('q',@")
cabbr rb call setreg('b',@")
cabbr ra call setreg('a',@")
cabbr s2sn1 let @r=1| %s/abc/\='xyz_'.(@r+setreg('r',@r+1))/g                         " substitute serial number with register
cabbr rev g/^/m0
cabbr gAnB g/\(AAA\)\(.*BBB\)\@!/ 
cabbr gpsn3 let i=1 | %s/pattern/\='REPLACE_'.i.execute('let i+=1')/g                 " go pattern and subs with serial number
cabbr gpsn2 let i=1 | g/pattern/execute "normal! I".printf("%02d ", i)|let i = i+1   " go pattern and subs with serial number
cabbr gpsn1 let i=1 | g#pattern# s#\zs\d\+\ze#\=i# | let i+=1                        " go pattern and subs with serial number
cabbr gpsn let i=1 | g#pattern\zs\d\+\ze# s##\=i# | let i+=1                        " go pattern and subs with serial number
cabbr s2sn let i=1 | 11,17g#index#s#index#\=printf('index%02d',i/3)#g | let i= i+1  " substitute serial number
cabbr s2in let i=0 | g/\(push|pop\)/let i = i + 1|put!='print \"DEBUG ' . i . '\"' " add string with serial number
cabbr s2an s/\(\d\+\)STR/\=(submatch(1)+1).'STR'/gc                                   " substitute number with number+1
cabbr s2sp %s/\(　\)\|\(\%ua0\)/ /g                                                " IDEOGRAPHIC SPACE(　) non-breaking spaceNBSP( ) to space
cabbr sabf tabdo %s/foo/bar/g	                                                    " substitute all buffer
cabbr iniij let i=0 |let j=0
cabbr w2d %s/TOWEEK\.\(\d\)/\=trim(system('date -d"last-sunday +' . submatch(1) .' day" +%Y-%m-%d'))/g
cabbr d2d %s/TODAY/\=strftime("%Y-%m-%d")/g
cabbr e2u4 %s/.*/\l&	        " Sets first letter of each line to lowercase
cabbr e2u3 %s/.*/\u&	        " Sets first letter of each line to uppercase
cabbr e2u2 %s/\<./\l&/g	    " Sets first letter of each word to lowercase
cabbr e2u1 %s/\<./\u&/g	    " Sets first letter of each word to uppercase
cabbr e2u %s/_\(\l\)/\u\1/gc " set _a to A
cabbr e2c %s/.*/\U&/g                                                                " exchange Up or Lower
cabbr tce s/[^\x00-\xff]\+/\=trim(system('trans -b :en ' . submatch(0)))/                  " translate chinese to english
cabbr e2a r! xxd -r -p <(echo 414243)                                                " Hex to ASC
cabbr e2h r! xxd -u -p <(echo -n 'ABC')                                              " ASC to Hex
cabbr m2l g/name.*\n\v^((name)@!.)*$/j                                                               " connect not end with name
cabbr gpe g/pat/+1.,/pat/-1 co$
cabbr mobo g/Pattern/exec "1m."                                                            " sort
cabbr m2b g/SYNTAX/.,/DESCRIPTION/-1 move /PARAMETERS/-1                                             " move block
cabbr stb 'b,'e g/^KS/,/^KE/-1s/$/@@/ | 'b,'e g/^KS/,/^KE/join | 'b,'e !sort -r | 'b,'e s/@@/^M/g " sort block
cabbr scm s/\([a-z]\)\([A-Z]\)/\1_\L\2/gc
cabbr sbc2 %!sort -k2nr " This sorted by the second column (-k2), treats the text as a number (n) and then sorts in reverse (r), which results in.
cabbr sbc1 %!sort -t'|' -k1,1r -k2,2n -u                                                            " sort
cabbr fresh redraw!
cabbr ntc NERDTree %:p:h | redraw!
cabbr ntf NERDTreeFocus | NERDTreeRefreshRoot | redraw!
cabbr ter set splitbelow | terminal ++rows=3
cabbr sno set nu  |set rnu
cabbr nno set nornu  |set nonu
cabbr n2f e %:h/readme.md
cabbr his r!echo "history 10" | bash -i 2>/dev/null | sed -e 's/\x1b\[.//g'
cabbr bsu bufdo %s/pattern/replace/gce | update                                     "  replace buffer
cabbr c_m ctrl+v and enter                                                           "  input ^M
cabbr b2s w!sudo tee %                                                               "  save with root user
cabbr tabbt g/[^|]/+1.,/[^|]/-1 Tabularize/|                                      "Tabularize block table
cabbr tabfl Tabularize/^-\+\D\|\s-\+\D\|`\|\\\|&\+/l1r0                          "Tabularize from last
cabbr tabnrs Tabularize/^-\+\D\|\s-\+\D\|`\|\\\|&\+/l1r0                          "Tabularize
cabbr tabnls Tabularize/^-\+\D\|\s-\+\D\|`\|\\\|&\+/l1r0                          "Tabularize
cabbr tabnrls Tabularize/^-\+\D\|\s-\+\D\|`\|\\\|&\+/l1r0                        "Tabularize
cabbr tabno Tabularize /^\(.\{-}\zs,\)\{2}/l0                                         "align at the  2nd occurence of ','
cabbr tabfirst Tabularize /^[^:]*\zs:
cabbr tabfirstm Tabularize /^[^@]*\zs@/l1l0                                       
cabbr tabfm Tabularize /.*\zs,/                                                      "tab on the last match
cabbr tabns Tabularize/:/l0
cabbr tabbs Tabularize /\s\+\zs\s/l0c0
cabbr tfm Tabularize/^-\+\D\|\s-\+\D\|`\|\\\|&\+/l1r0                         
cabbr c2m :g/[^|]$/norm J   " csv to md format
cabbr fjs :%!python3 -m json.tool                                                    " format with json
cabbr fas g/-/ s/\\\?\s*$/ `# ` \\/g                                                 " add change line at the end
cabbr dht %s#<[^>]\+>##g                                                             " Delete HTML tags but keeps text
cabbr unq2 %s/^\(.*\)\n\1$/\1/                                                        " Delete lines which appears twice
cabbr unq1 %s/^\(.*\)\(\n\1\)\+$/\1/                                                 " delete duplicate
cabbr unq %g/^\(.*\)\n\1$/d                                                          " delete duplicate duplicate field:cat file  uniq -f 1
cabbr dbc %s/([^)]*)//g                                                              " delete in ()
cabbr dml g/SPECIAL/.,.+3d                                                           " go pattern and delete next 3 line
cabbr dnAB v/\(A|B\)/                                                                " delete not A and B
cabbr dnA g!/A/d                                                                     " delete not A
cabbr dbb s/^\s*//g;s/\s*$//g                                                        " delete blank begin
cabbr dbl g/^[\s\t]*$/d                                                              " delete blank line
cabbr fw /\
cabbr g2e g/abc/normal! hgcc                                                         " go and comment
cabbr g2a g/abc/normal! @a                                                           " go and substitute
cabbr w2c %s/./&/g
cabbr p4x r!xsel -o -b
cabbr p4w r!sed -n 1,+1p /tmp/www
cabbr p4r r /tmp/registerr
cabbr p4l r /tmp/registerl
cabbr p4f r /tmp/registerf
cabbr p4p r /tmp/registerp
cabbr p4i r /tmp/registeri
cabbr p4u r /tmp/registeru
cabbr p4y r /tmp/registery
cabbr ppp normal "+p
cabbr y2s .write! /tmp/registers                                     
cabbr y2o .write! /tmp/registero                                     
cabbr y2i .write! /tmp/registeri                                     
cabbr y2u .write! /tmp/registeru                                     
cabbr y2y .write! /tmp/registery                                     
cabbr y2x .write !xsel -i -b                                   
cabbr y2r call system('xsel -i -b ', @")                           
cabbr ypwd call writefile([getcwd()], "/tmp/registerp")
cabbr pfd call writefile([expand("%:p:h")], "/tmp/registerp")
cabbr pfp call writefile([expand("%:p")], "/tmp/registerp")
cabbr yfd call writefile([expand("%:p:h")], "/tmp/registerp")
cabbr yfp call writefile([expand("%:p")], "/tmp/registerp")
cabbr y2f call writefile(getreg('"', 1, 1), "/tmp/registeru")                                     
cabbr y4r call writefile(getreg('"', 1, 1), "/tmp/registeru")                                     
cabbr y4l call writefile([getline('.')], '/tmp/registerl') | call setreg('+',getline('.')) | call setreg('l',getline('.'))
cabbr yyy call writefile(getreg('"', 1, 1), "/tmp/registerr") | call setreg('+',getline('.')) | call setreg('l',getline('.')) | call writefile([getline('.')], '/tmp/registerl') | write! /tmp/registerf 
cabbr sfl s#\s*\\\n\s*--# --#g
cabbr sfm s#\s\+--# \\\r--#g
cabbr mvfile !mv %:p %:p:h/file
cabbr touchfile !touch %:p:h/file
cabbr e2v echo g:JavaComplete_LibsPath
cabbr y2 .write! /tmp/register                                     
cabbr wcl wincmd l
cabbr wck wincmd k
cabbr wcj wincmd j
cabbr wch wincmd h
cabbr nvS normal S"
cabbr nyss normal yss"
cabbr nysaw normal ysaw"
cabbr nysiW normal ysiW"
cabbr nysiw normal ysiw"
iabbr mmdiagram ```erDiagramCUSTOMER ||--o{ ORDER : placesCUSTOMER {string namestring custNumberstring sector}ORDER ||--|{ LINE-ITEM : containsORDER {int orderNumberstring deliveryAddress}LINE-ITEM {string productCodeint quantityfloat pricePerUnit}
iabbr mmjourney ```mermaidjourneytitle My working daysection Go to workMake tea: 5: MeGo upstairs: 3: MeDo work: 1: Me, Catsection Go homeGo downstairs: 5: MeSit down: 5: Me
iabbr mmpie ```mermaidpietitle Key elements in Product X"Calcium" : 42.96"Potassium" : 50.05"Magnesium" : 10.01"Iron" :  5
iabbr mmgraph ```mermaidgraphLRstart[开始]-->input[输入A,B,C]input-->conditionA{A是否大于B}conditionA-->|YES|conditionC{A是否大于C}conditionA--NO-->conditionB{B是否大于C}conditionC--YES-->printA[输出A]conditionC--NO-->printC[输出C]conditionB--YES-->printB[输出B]conditionB--NO-->printC[输出C]printA-->stop[结束]printC-->stopprintB-->stop
iabbr mmwgantt ```mermaidganttdateFormat  YYYY-MM-DDtitle CWEEK WEEK TASKsection MONMON task    : mon0p  , TOWEEK.1 , 1dtask1       : active , mon1f    , TOWEEK.1    , 4htask2       : active , mon2f    , after mon1f , 4hsection TUETUE task    : tue0p  , TOWEEK.2 , 1dtast1       : active , tue1f    , TOWEEK.2    , 4htask2       : active , tue2f    , after tue1f , 4hsection WEDWED task    : wed0p  , TOWEEK.3 , 1dtask1       : active , wed1f    , TOWEEK.3    , 4htask2       : active , wed2f    , after wed1f , 4hsection THUTHU task    : thu0p  , TOWEEK.4 , 1dtask1       : active , thu1f    , TOWEEK.4    , 4htask2       : active , thu2f    , after thu1f , 4hsection FRIFRI task    : fri0p  , TOWEEK.5 , 1dtask1       : active , fri1f    , TOWEEK.5    , 4htask2       : active , fri2f    , after fri1f , 4hsection SATSAT task    : sat0p  , TOWEEK.6 , 1dtask1       : active , sat1f    , TOWEEK.6    , 4htask2       : active , sat2f    , after sat1f , 4hsection SUNSUN task    : sun0p  , TOWEEK.7 , 1dtask1       : active , sun1f    , TOWEEK.7    , 4htask2       : active , sun2f    , after sun1f , 4h
iabbr mmdgantt ```mermaidganttdateFormat  YYYY-MM-DD.HHaxisFormat %H hourstitle CDAY DAY TASKsection SUNRISECompleted exercise : crit   , active , sr0      , TODAY.06   , TODAY.09Jogging exercise   : crit   , active , sr1      , TODAY.06   , 30minOral exercise      : crit   , active , sr2      , after sr1 , 30minBadminton exercise : crit   , active , sr3      , after sr2 , 30minsection MORNINGCompleted task     : active , am0    , TODAY.09 , TODAY.12Implement parse    : active , am1    , TODAY.09 , 2hsection NOONOral exercise      : active , m0     , TODAY.12 , TODAY.14section AFTERNOONCompleted exercise : active , pm0    , TODAY.14 , TODAY.18Completed exercise : active , pm1    , TODAY.14 , TODAY.18section SUNSETCompleted exercise : active , ss0    , TODAY.18 , TODAY.19section EVENINGCompleted exercise : active , ss0    , TODAY.19 , TODAY.21section MIDNIGHTReading            : crit,active , mn0    , TODAY.21 , TODAY.23Comment            : crit,active , mn0    , TODAY.21 , TODAY.23
iabbr <expr> PWD getcwd()
iabbr <expr> CWEEK strftime("%V")
iabbr <expr> CDAY strftime("%Y-%m-%d")
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set autowrite
set background=dark
set backspace=2
set cindent
set cinoptions=g0,:0,N-s,(0
set cmdheight=2
set completefunc=youcompleteme#CompleteFunc
set completeopt=menuone
set confirm
set cpoptions=aAceFsB
set dictionary=/usr/share/dict/words
set expandtab
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
set helplang=cn
set history=10000
set hlsearch
set ignorecase
set incsearch
set langmenu=zh_CN.UTF-8
set laststatus=2
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/plugged/cpp-mode,~/.vim/plugged/vim-edit,~/.vim/plugged/change-colorscheme,~/.vim/plugged/prepare-code,~/.vim/plugged/vim-buffer,~/.vim/plugged/vimplus-startify,~/.vim/plugged/tagbar,~/.vim/plugged/YouCompleteMe,~/.vim/plugged/LeaderF,~/.vim/plugged/ack.vim,~/.vim/plugged/vim-easymotion,~/.vim/plugged/incsearch.vim,~/.vim/plugged/auto-pairs,~/.vim/plugged/nerdtree,~/.vim/plugged/vim-nerdtree-syntax-highlight,~/.vim/plugged/nerdtree-git-plugin,~/.vim/plugged/tabular,~/.vim/plugged/vim-fugitive,~/.vim/plugged/vim-surround,~/.vim/plugged/vim-commentary,~/.vim/plugged/vim-repeat,~/.vim/plugged/vim-endwise,~/.vim/plugged/vim-cpp-enhanced-highlight,~/.vim/plugged/vim-airline,~/.vim/plugged/vim-airline-themes,~/.vim/plugged/vim-devicons,~/.vim/plugged/vim-slash,~/.vim/plugged/gv.vim,~/.vim/plugged/vim-textobj-user,~/.vim/plugged/vim-textobj-indent,~/.vim/plugged/vim-textobj-syntax,~/.vim/plugged/vim-textobj-function,~/.vim/plugged/vim-textobj-parameter,~/.vim/plugged/echodoc.vim,~/.vim/plugged/vim-smooth-scroll,~/.vim/plugged/clever-f.vim,~/.vim/plugged/indentpython.vim,~/.vim/plugged/vim-dirdiff,~/.vim/plugged/vimfluence,~/.vim/plugged/vim-pydocstring,~/.vim/plugged/VisIncr,~/.vim/plugged/vim-snippets,~/.vim/plugged/ultisnips,~/.vim/plugged/gsession.vim,~/.vim/plugged/vim-signature,~/.vim/plugged/vim-multiple-cursors,~/.vim/plugged/presenting.vim,~/.vim/plugged/DrawIt,~/.vim/plugged/vim-javacomplete2,~/.vim/plugged/kotlin-vim,~/.vim/plugged/jcommenter.vim,~/.vim/plugged/vim-gradle,~/.vim/plugged/vim-go,~/.vim/plugged/vim-scala,~/.vim/plugged/rust.vim,/var/lib/vim/addons,/etc/vim,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vim82/pack/dist/opt/matchit,/usr/share/vim/vimfiles/after,/etc/vim/after,/var/lib/vim/addons/after,~/.vim/plugged/vim-nerdtree-syntax-highlight/after,~/.vim/plugged/nerdtree-git-plugin/after,~/.vim/plugged/tabular/after,~/.vim/plugged/vim-cpp-enhanced-highlight/after,~/.vim/plugged/vim-textobj-function/after,~/.vim/plugged/ultisnips/after,~/.vim/plugged/vim-signature/after,~/.vim/plugged/vim-scala/after,~/.vim/plugged/rust.vim/after,~/.vim/after
set shiftwidth=4
set shortmess=filnxtToOSc
set showcmd
set showtabline=2
set sidescroll=10
set smartcase
set smartindent
set smarttab
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabline=%!airline#extensions#tabline#get()
set tabstop=4
set tags=./tags,./TAGS,tags,TAGS,.tags,.python.tags,.java.tags,.source.tags
set termencoding=utf-8
set thesaurus=/usr/coderoot/usr/share/dict/thesaurus.txt
set ttimeoutlen=0
set undodir=~/.vim/undodir
set undofile
set virtualedit=block,onemore
set whichwrap=b,s,<,>,h,l
set wildmenu
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/2P/094_whack_a_mole/Play
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd .git/config
$argadd Attention_Partition/.git/config
edit .git/config
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt Attention_Partition/.git/config
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <M-n> :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> <M-p> AutoPairsToggle()
inoremap <buffer> <silent> <M-b> =AutoPairsBackInsert()
inoremap <buffer> <silent> <M-e> =AutoPairsFastWrap()
inoremap <buffer> <silent> <C-H> =AutoPairsDelete()
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
inoremap <buffer> <silent> <M-'> =AutoPairsMoveCharacter('''')
inoremap <buffer> <silent> <M-"> =AutoPairsMoveCharacter('"')
inoremap <buffer> <silent> <M-}> =AutoPairsMoveCharacter('}')
inoremap <buffer> <silent> <M-{> =AutoPairsMoveCharacter('{')
inoremap <buffer> <silent> <M-]> =AutoPairsMoveCharacter(']')
inoremap <buffer> <silent> <M-[> =AutoPairsMoveCharacter('[')
inoremap <buffer> <silent> <M-)> =AutoPairsMoveCharacter(')')
inoremap <buffer> <silent> <M-(> =AutoPairsMoveCharacter('(')
inoremap <buffer> <silent> § =AutoPairsMoveCharacter('''')
inoremap <buffer> <silent> ¢ =AutoPairsMoveCharacter('"')
inoremap <buffer> <silent> © =AutoPairsMoveCharacter(')')
inoremap <buffer> <silent> ¨ =AutoPairsMoveCharacter('(')
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
inoremap <buffer> <silent> ý =AutoPairsMoveCharacter('}')
inoremap <buffer> <silent> û =AutoPairsMoveCharacter('{')
inoremap <buffer> <silent> Ý =AutoPairsMoveCharacter(']')
inoremap <buffer> <silent> Û =AutoPairsMoveCharacter('[')
noremap <buffer> <silent> <M-n> :call AutoPairsJump()
noremap <buffer> <silent> <M-p> :call AutoPairsToggle()
inoremap <buffer> <silent>  =AutoPairsDelete()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
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
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=g0,:0,N-s,(0
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#,:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'gitconfig'
setlocal filetype=gitconfig
endif
setlocal fixendofline
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetGitconfigIndent()
setlocal indentkeys=o,O,*<Return>,0[,],0;,0#,=,!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
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
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'gitconfig'
setlocal syntax=gitconfig
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 24 - ((23 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 24
normal! 05|
tabnext 1
badd +10 .git/config
badd +7 Attention_Partition/.git/config
badd +380 ~/.vimrc.custom.config
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

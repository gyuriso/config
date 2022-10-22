"
" Installation : cp -v .vimrc ~/.vimrc
"

" Returns the effective value of 'shiftwidth'.  This is the  'shiftwidth'  value
" unless it is zero, in which case it is the 'tabstop' value.  This function was
" introduced with patch 7.3.694  in 2012,  everybody  should  have  it  by  now.
set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2

" Syntax highlighting enables Vim to show parts of the text in another  font  or
" color. Those parts can be specific keywords or text matching  a  pattern.  Vim
" doesn't parse the whole file (to keep it fast), so the  highlighting  has  its
" limitations.  Lexical highlighting might be a better name, but since everybody
" calls it syntax highlighting we'll stick with that.
syntax on

" Color of background.
highlight Normal ctermfg=grey ctermbg=darkgrey
set t_Co=256
colo ron

" Colorscheme
"colorscheme elflord

" A List is an ordered sequence of items.   An  item  can be of any type.  Items
" can be accessed by their index number.  Items can be added and removed at  any
" position in the sequence.
" set listchars=tab:>-,trail:~,extends:>,precedes:<
"set list

" This option has the effect of making Vim either more  Vi-compatible,  or  make
" Vim behave in a more useful way.
set nocompatible

" Vim can detect the type of file that is edited.  This is done by checking  the
" file name and sometimes by inspecting the contents of the  file  for  specific
" text.
filetype indent plugin on

" When  off  a  buffer  is  unloaded  when it  is  |abandon|ed. When on a buffer
" becomes  hidden when it is |abandon|ed.  If the buffer is still  displayed  in
" another window, it does not become hidden, of course.
set hidden

" When 'wildmenu'  is on, command-line  completion operates in an enhanced mode.
" On  pressing  'wildchar' (usually <Tab>) to invoke  completion,  the  possible
" matches  are  shown  just  above  the  command  line,  with  the  first  match
" highlighted (overwriting the status line, if there is one).
set wildmenu

" Show (partial) command in the last line of the screen.  Set this option off if
" your terminal is slow.
set showcmd

" When there is a previous search pattern, highlight all  its  matches. The type
" of  highlighting  used  can  be  set  with the 'l' occasion in the 'highlight'
" option.  This uses the "Search" highlight group  by default.  Note  that  only
" the matching text is highlighted, any offsets are not applied.
set hlsearch

" If the 'ignorecase' option is on, the  case  of  normal  letters  is  ignored.
" 'smartcase' can be set to ignore case  when  the  pattern  contains  lowercase
" letters only.
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Copy indent from current line when starting a new line (typing <CR> in  Insert
" mode or when using the "o" or "O" command).  If you do not  type  anything  on
" the new line except <BS> or CTRL-D and then type <Esc>, CTRL-O  or  <CR>,  the
" indent is deleted again.  Moving the cursor  to  another  line  has  the  same
" effect, unless the 'I' flag is included in 'cpoptions'.
set autoindent

" When "on" the commands listed below move the cursor to the first non-blank  of
" the line.  When off the cursor is kept in the same column (if possible).  This
" applies to the  commands:  CTRL-D, CTRL-U, CTRL-B, CTRL-F, "G", "H", "M", "L",
" gg, and to the commands "d", "<<" and ">>" with a linewise operator,  with "%"
" with  a  count and to buffer changing commands (CTRL-^, :bnext, :bNext, etc.).
" Also  for  an  Ex  command  that  only has a line number, e.g., ":25" or ":+".
set nostartofline

" The value of this option influences when the last window will  have  a  status
" line:
" 	0: never
" 	1: only if there are at least two windows
" 	2: always
set laststatus=2

" Use visual bell instead of beeping.  The terminal code to display  the  visual
" bell is given with 't_vb'.  When no beep or flash is wanted,
" use ":set vb t_vb=".
set visualbell
set t_vb=

" Number  of  screen   lines   to  use  for  the  command-line.  Helps  avoiding
" |hit-enter| prompts. The value of this option is stored with the tab page,  so
" that each tab page can have a different value.
set cmdheight=1

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Put  Vim in Paste mode.  This is useful if you want to cut or copy  some  text
" from one window and paste it in Vim. This will avoid unexpected effects.
set paste

" Map <C-L> (redraw screen) to also turn off search highlighting until the next
"  search
nnoremap <C-L> :nohl<CR><C-L>

" If in Insert, Replace or Visual mode put a message on the last line.  Use  the
" 'M' flag in 'highlight' to set the type  of  highlighting  for  this  message.
set showmode

" While typing a search command, show where the pattern, as it was typed so far,
" matches.  The matched string is highlighted.  If the pattern is invalid or not
" found, nothing is shown.  The screen  will  be  updated  often, this  is  only
" useful on fast terminals.
set incsearch

" Get the amount of indent for line {lnum} according the C  indenting  rules, as
" with 'cindent'. The indent is counted in spaces, the  value  of  'tabstop'  is
" relevant.  {lnum} is used just like in |getline()|. When {lnum} is invalid  or
" Vim was not compiled the |+cindent| feature, -1 is returned.
set cindent

" When a bracket is inserted, briefly jump  to  the  matching  one.  The jump is
" only  done if the match can be seen on the screen.  The time to show the match
" can be set with 'matchtime'.
set showmatch

" If 'modeline' is on 'modelines' gives the number of lines that is checked  for
" set  commands.  If 'modeline' is off or  'modelines'  is  zero  no  lines  are
" checked. See |modeline|.
set modelines=0

" The kind of folding used for the current window.  Possible values:
" |fold-manual|	manual	    Folds are created manually.
" |fold-indent|	indent	    Lines with equal indent form a fold.
" |fold-expr|	expr	    'foldexpr' gives the fold level of a line.
" |fold-marker|	marker	    Markers are used to specify folds.
" |fold-syntax|	syntax	    Syntax highlighting items specify folds.
" |fold-diff|	diff	    Fold text that is not changed.
set fdm=marker

" Show the line and column number of the cursor position, separated by a  comma.
" When there is room, the relative position of the displayed text in the file is
" shown on the far right:
"  	Top	first line is visible
" 	Bot	last line is visible
" 	All	first and last line are visible
" 	45%	relative position in the file
set ruler

" having your cursor at the end of a line and then using the right arrow
" will result in the cursor moving to the start of the next line.
set whichwrap+=<,>,h,l

" use it on a terminal with light background
set background=light

" make a vertical column in the background at 80 characters
set colorcolumn=81

" color for extra spaces
highlight ExtraWhitespace ctermbg=darkyellow guibg=darkyellow
match ExtraWhitespace /\s\+$/

" Formats the statusline
set statusline=%f                               " file name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, " file encoding
set statusline+=%{&ff}]                         " file format
set statusline+=%y                              " file type
set statusline+=%h                              " help file flag
set statusline+=[%{getbufvar(bufnr('%'),'&mod')?'modified':'saved'}]
set statusline+=%r                              " read only flag
set statusline+=\ %=                            " align left
set statusline+=Line:%l/%L[%p%%]                " line X/Y [%]
set statusline+=\ Col:%c                        " current column
set statusline+=\ Buf:%n                        " buffer number
set statusline+=\ [%b][0x%B]\                   " current ASCII and byte code

highlight ColorColumn             ctermbg=gray                   guibg=black
highlight Search      guibg=red   ctermfg=white    ctermbg=red   guifg=white
highlight StatusLine  guibg=White ctermfg=DarkGray ctermbg=White guifg=Black
highlight ColorColumn guibg=Black ctermfg=White    ctermbg=Gray  guifg=White

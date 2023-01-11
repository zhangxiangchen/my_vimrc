"  _          _ _                            _     _
" | |__   ___| | | ___   __      _____  _ __| | __| |
" | '_ \ / _ \ | |/ _ \  \ \ /\ / / _ \| '__| |/ _` |
" | | | |  __/ | | (_) |  \ V  V / (_) | |  | | (_| |
" |_| |_|\___|_|_|\___/    \_/\_/ \___/|_|  |_|\__,_|


" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @theniceboy

" Checkout-list
" vim-esearch
" fmoralesc/worldslice
" SidOfc/mkdx


" ==================== Editor behavior ====================
"set clipboard=unnamedplus
let &t_ut=''
set autochdir
set exrc
set secure
set number
set relativenumber
set cursorline
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable

set guifont=\JetBrainsMonoNL_Nerd_Font,Agave_Nerd_Font\ Font:h24
let g:neovide_cursor_animation_length=0.1
let g:neovide_cursor_trail_size = 0.6
let g:neovide_cursor_antialiasing = v:true
let g:neovide_cursor_unfocused_outline_width = 0.125
let g:neovide_cursor_trail_size = 0.6
let g:neovide_cursor_antialiasing = v:true
let g:neovide_cursor_unfocused_outline_width = 0.125
let g:neovide_cursor_vfx_mode = "railgun"
let g:neovide_cursor_vfx_mode = "wireframe"
map H 99h
let g:neovide_scale_factor = 1
" g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
let g:neovide_transparency = 0.5
let g:transparency = 0.8
let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))
let g:neovide_floating_blur_amount_x = 2.0
let g:neovide_floating_blur_amount_y = 2.0
let g:neovide_transparency = 0.8
map ; :
let g:neovide_scroll_animation_length = 0.8
let g:neovide_hide_mouse_when_typing = v:false
let g:neovide_underline_automatic_scaling = v:false
let g:neovide_refresh_rate = 60
let g:neovide_refresh_rate_idle = 5
map L A

set formatoptions-=tc
set splitright
set modeline
set scrolloff=10 
set incsearch
set ignorecase
set cursorcolumn
set splitbelow
set noshowmode
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set lazyredraw
set visualbell
imap <C-p> Print
silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo
"silent !mkdir -p $HOME/.config/nvim/tmp/sessions
set backupdir=$HOME/.config/nvim/tmp/backup,.
set directory=$HOME/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.config/nvim/tmp/undo,.
endif
set colorcolumn=100
set updatetime=100
set virtualedit=block

let g:neovide_hide_mouse_when_typing = v:false

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

map U :Autoformat<CR>
" ==================== Terminal Behaviors ====================
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>

" keyboard
noremap J 12j
noremap K 12k
noremap s :w<CR>
map <LEADER>r <C-w>w
noremap pl :PlugInstall<CR>
noremap w i
noremap a I
noremap xv <C-v>
noremap <C-j> 4j
noremap <C-k> 4k
imap <C-j> <ESC>jw
imap <C-k> <ESC>kw
imap <C-l> <ESC>lw
imap <C-h> <ESC>hw
noremap pl :PlugInstall<CR>
noremap <Leader>j 22j
noremap <Leader>k 22k
map <Space> <Leader>

noremap b :RnvimrToggle<CR>
noremap q :q<CR>
" ==================== Window management ====================
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w
noremap <LEADER>f <C-w>w
map <LEADER>vs :vs<CR>
map <LEADER>sp :sp<CR>
noremap <LEADER>u <C-w>k
map R :source $MYVIMRC<CR>
noremap <LEADER>e <C-w>j
noremap <LEADER>n <C-w>h
noremap <LEADER>i <C-w>l
" Resize splits with arrow keys
noremap <down> :res +5<CR>
noremap <up> :res -5<CR>
noremap <right> :vertical resize-5<CR>
noremap <left> :vertical resize+5<CR>
imap jk <ESC>
" ==================== Install Plugins with Vim-Plug =====
call plug#begin('$HOME/.config/nvim/plugged')


" Files + devicons



Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
" Goto buffer in position...
tmap <C-1> :BufferGoto 1<CR>
tmap <C-2> :BufferGoto 2<CR>
tmap <C-3> :BufferGoto 3<CR>
tmap <C-4> :BufferGoto 4<CR>
tmap <C-5> :BufferGoto 5<CR>
tmap <C-6> :BufferGoto 6<CR>
tmap <C-7> :BufferGoto 7<CR>
noremap 1p <Cmd>BufferPin<CR>

map <C-q> :BufferClose<CR>
map tg :TagbarToggle<CR>
map 11 :BufferGoto 1<CR>
map 12 :BufferGoto 2<CR>
map 13 :BufferGoto 3<CR>
map 14 :BufferGoto 4<CR>
map 15 :BufferGoto 5<CR>
map 16 :BufferGoto 6<CR>
map 17 :BufferGoto 7<CR>
nnoremap <C-1> :BufferGoto 1<CR>
nnoremap <C-2> :BufferGoto 2<CR>
nnoremap <C-3> :BufferGoto 3<CR>
nnoremap <C-4> :BufferGoto 4<CR>
nnoremap <C-5> :BufferGoto 5<CR>
nnoremap <C-6> :BufferGoto 6<CR>
nnoremap <C-7> :BufferGoto 7<CR>
" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" New tabs are opened next to the currently selected tab.
" Enable to insert them in buffer number order.
let bufferline.add_in_buffer_number_order = v:false

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Excludes buffers from the tabline
let bufferline.exclude_ft = ['javascript']
let bufferline.exclude_name = ['package.json']

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
let bufferline.icons = v:true

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" If true, new buffers will be inserted at the end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_end = v:false

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 4

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
			\ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null
" let fg_target = 'red'
"
" let fg_current  = s:fg(['Normal'], '#efefef')
" let fg_visible  = s:fg(['TabLineSel'], '#efefef')
" let fg_inactive = s:fg(['TabLineFill'], '#888888')
"
" let fg_modified  = s:fg(['WarningMsg'], '#E5AB0E')
" let fg_special  = s:fg(['Special'], '#599eff')
" let fg_subtle  = s:fg(['NonText', 'Comment'], '#555555')
"
" let bg_current  = s:bg(['Normal'], '#000000')
" let bg_visible  = s:bg(['TabLineSel', 'Normal'], '#000000')
" let bg_inactive = s:bg(['TabLineFill', 'StatusLine'], '#000000')
"
" " Meaning of terms:
" "
" " format: "Buffer" + status + part
" "
" " status:
" "     *Current: current buffer
" "     *Visible: visible but not current buffer
" "    *Inactive: invisible but not current buffer
" "
" " part:
" "        *Icon: filetype icon
" "       *Index: buffer index
" "         *Mod: when modified
" "        *Sign: the separator between buffers
" "      *Target: letter in buffer-picking mode
" "
" " BufferTabpages: tabpage indicator
" " BufferTabpageFill: filler after the buffer section
" " BufferOffset: offset section, created with set_offset()
"
" call s:hi_all([
" \ ['BufferCurrent',        fg_current,  bg_current],
" \ ['BufferCurrentIndex',   fg_special,  bg_current],
" \ ['BufferCurrentMod',     fg_modified, bg_current],
" \ ['BufferCurrentSign',    fg_special,  bg_current],
" \ ['BufferCurrentTarget',  fg_target,   bg_current,   'bold'],
" \ ['BufferVisible',        fg_visible,  bg_visible],
" \ ['BufferVisibleIndex',   fg_visible,  bg_visible],
" \ ['BufferVisibleMod',     fg_modified, bg_visible],
" \ ['BufferVisibleSign',    fg_visible,  bg_visible],
" \ ['BufferVisibleTarget',  fg_target,   bg_visible,   'bold'],
" \ ['BufferInactive',       fg_inactive, bg_inactive],
" \ ['BufferInactiveIndex',  fg_subtle,   bg_inactive],
" \ ['BufferInactiveMod',    fg_modified, bg_inactive],
" \ ['BufferInactiveSign',   fg_subtle,   bg_inactive],
" \ ['BufferInactiveTarget', fg_target,   bg_inactive,  'bold'],
" \ ['BufferTabpages',       fg_special,  bg_inactive, 'bold'],
" \ ['BufferTabpageFill',    fg_inactive, bg_inactive],
" \ ])
"
" call s:hi_link([
" \ ['BufferCurrentIcon',  'BufferCurrent'],
" \ ['BufferVisibleIcon',  'BufferVisible'],
" \ ['BufferInactiveIcon', 'BufferInactive'],
" \ ['BufferOffset',       'BufferTabpageFill'],
" \ ])
"
" " NOTE: this is an example taken from the source, implementation of
" " s:fg(), s:bg(), s:hi_all() and s:hi_link() is left as an exercise
" " for the reader.
Plug 'chuling/equinusocio-material.vim'
Plug 'jsit/toast.vim'
Plug 'fenetikm/falcon'
Plug 'ghifarit53/tokyonight-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}



Plug 'nanotech/jellybeans.vim'
Plug 'chuling/ci_dark'

Plug 'sstallion/vim-cursorline'
function! Fzf_dev()
	let l:fzf_files_options = ' -m --bind ctrl-d:preview-page-down,ctrl-u:preview-page-up --preview "bat --color always --style numbers {2..}"'


	function! s:files()
		let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
		return s:prepend_icon(l:files)
	endfunction

	function! s:prepend_icon(candidates)
		let result = []
		for candidate in a:candidates
			let filename = fnamemodify(candidate, ':p:t')
			let icon = WebDevIconsGetFileTypeSymbol(filename, isdirectory(filename))
			call add(result, printf("%s %s", icon, candidate))
		endfor

		return result
	endfunction

	function! s:edit_file(items)
		let items = a:items
		let i = 1
		let ln = len(items)
		while i < ln
			let item = items[i]
			let parts = split(item, ' ')
			let file_path = get(parts, 1, '')
			let items[i] = file_path
			let i += 1
		endwhile
		call s:Sink(items)
	endfunction

	let opts = fzf#wrap({})
	let opts.source = <sid>files()
	let s:Sink = opts['sink*']
	let opts['sink*'] = function('s:edit_file')
	let opts.options .= l:fzf_files_options
	call fzf#run(opts)

endfunction
Plug 'francoiscabrol/ranger.vim'

Plug 'rbgrouleff/bclose.vim'
Plug 'Lokaltog/neoranger'


let g:ranger_map_keys = 0



Plug 'd86leader/vim-go-syntax'
Plug 'theniceboy/nvim-deus'
Plug 'jnwhiteh/vim-golang'
Plug 'voldikss/vim-floaterm'
map tr :FloatermToggle<CR>
Plug 'morhetz/gruvbox'
Plug 'jonathanfilip/vim-lucius'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'brooth/far.vim'
set lazyredraw            " improve scrolling performance when navigating through large results
set regexpengine=1        " use old regexp engine
set ignorecase smartcase  " ignore case only when the pattern contains no capital letters
noremap F :Farf<CR>
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
nnoremap  <leader>c:call nerdcommenter#Comment('x', 'toggle')<CR>
nnoremap  <leader>c:call nerdcommenter#Comment('x', 'toggle')<CR>

" nvim v0.5.0
Plug 'kdheepak/lazygit.nvim'

let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed

let g:lazygit_use_custom_config_file_path = 0 " config file path is evaluated if this value is 1
let g:lazygit_config_file_path = '' " custom config file path



" " ==================== gitsigns.nvim ====================
" set statusline+=%{get(b:,'gitsigns_status','')}
" require('gitsigns').setup {
"   signs = {
"     add          = { hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
"     change       = { hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
"     delete       = { hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
"     topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
"     changedelete = { hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
"     untracked    = { hl = 'GitSignsAdd'   , text = '┆', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
"   },
"   signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
"   numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
"   linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
"   word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
"   watch_gitdir = {
"     interval = 1000,
"     follow_files = true
"   },
"   attach_to_untracked = true,
"   current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
"   current_line_blame_opts = {
"     virt_text = true,
"     virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
"     delay = 1000,
"     ignore_whitespace = false,
"   },
"   current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
"   sign_priority = 6,
"   update_debounce = 100,
"   status_formatter = nil, -- Use default
"   max_file_length = 40000, -- Disable if file is longer than this (in lines)
"   preview_config = {
"     -- Options passed to nvim_open_win
"     border = 'single',
"     style = 'minimal',
"     relative = 'cursor',
"     row = 0,
"     col = 1
"   },
"   yadm = {
"     enable = false
"   },
" }

noremap ii <ESC>

Plug 'joshdick/onedark.vim'
"go"
Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }

" NERDTree
map <F3> :NERDTreeToggle<CR>
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
" NERDTrees File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
	exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
	exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
au VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
au VimEnter * call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
au VimEnter * call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
au VimEnter * call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
au VimEnter * call NERDTreeHighlightFile('rb', 'Red', 'none', '#ffa500', '#151515')
au VimEnter * call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
autocmd VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
highlight! link NERDTreeFlags NERDTreeDir

Plug 'dinhhuy258/git.nvim'
" Git
Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
Plug 'theniceboy/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }
Plug 'lewis6991/gitsigns.nvim'
Plug 'cohama/agit.vim'
Plug 'kdheepak/lazygit.nvim'
Plug 'ibhagwan/fzf-lua'

" Plug 'tadaa/vimade'
Plug 'nvim-plugins/nvim-syntax-go'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'gcavallanti/vim-noscrollbar'
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %{noscrollbar#statusline()}
" Track the engine.


" sni
Plug 'SirVer/ultisnips'


" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

"i Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<C-u>"
let g:UltiSnipsJumpForwardTrigger="<C-n>"
let g:UltiSnipsJumpBackwardTrigger="<C-m>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"



"airline"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline_theme = 'solarized'
Plug 'itmecho/neoterm.nvim'
map <Leader>t :NeotermToggle<CR>
Plug 'AnthonyDiGirolamo/airline-themes'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
Plug 'kevinhwang91/rnvimr'
tnoremap Rr :RnvimrResize<CR>
nnoremap RR :RnvimrToggle<CR>
tnoremap rR :RnvimrToggle<CR>
" vim-go是golang的开发插件，项目地址：https://github.com/fatih/vim-go，帮助:help vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" 定拦
" Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'Yggdroot/indentLine'
let g:indentLine_enabled = 1			" 使插件生效
let g:indentLine_char = '┊'				" 设置缩进线字符，也可以为 '|', '┆', '┊' 等
let g:indentLine_conceallevel = 2		" 使插件正常运行
let g:indentguides_ignorelist = ['text']
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '┆'
Plug 'thaerkh/vim-indentguides'




Plug 'drewtempelmeyer/palenight.vim'
" DelemitMate
Plug 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
" GitGutter
Plug 'airblade/vim-gitgutter'
" Code Formatter
Plug 'Chiel92/vim-autoformat'
nnoremap <Leader><Leader>a :Autoformat<cr>

" Icons
Plug 'ryanoasis/vim-devicons', {'commit': '58e57b6'}


"tagbar
Plug 'preservim/tagbar'
"
set nocompatible
Plug 'sheerun/vim-polyglot'

Plug 'tomasr/molokai'
" ==coc==

Plug 'neoclide/coc.nvim', {'branch': 'release'}


" ==================== coc.nvim ====================
let g:coc_global_extensions = [
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-eslint',
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
	\ 'coc-gitignore',
	\ 'coc-html',
	\ 'coc-import-cost',
	\ 'coc-jest',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-prettier',
	\ 'coc-prisma',
	\ 'coc-pyright',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-stylelint',
	\ 'coc-syntax',
	\ 'coc-tasks',
	\ 'coc-translator',
	\ 'coc-tsserver',
	\ 'coc-vetur',
	\ 'coc-vimlsp',
	\ 'coc-yaml',
	\ 'coc-yank']
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-o> coc#refresh()
function! Show_documentation()
	call CocActionAsync('highlight')
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction
nnoremap <LEADER>h :call Show_documentation()<CR>
" set runtimepath^=~/.config/nvim/coc-extensions/coc-flutter-tools/
" let g:coc_node_args = ['--nolazy', '--inspect-brk=6045']
" let $NVIM_COC_LOG_LEVEL = 'debug'
" let $NVIM_COC_LOG_FILE = '/Users/david/Desktop/log.txt'

nnoremap <silent><nowait> <LEADER>d :CocList diagnostics<cr>
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)
nnoremap <c-c> :CocCommand<CR>
" Text Objects
xmap kf <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap kf <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
xmap kc <Plug>(coc-classobj-i)
omap kc <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" Useful commands
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap tt :CocCommand explorer<CR>
" coc-translator
nmap ts <Plug>(coc-translator-p)
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>aw  <Plug>(coc-codeaction-selected)w
" coctodolist
" nnoremap <leader>tn :CocCommand todolist.create<CR>
" nnoremap <leader>tl :CocList todolist<CR>
" nnoremap <leader>tu :CocCommand todolist.download<CR>:CocCommand todolist.upload<CR>
" coc-tasks
noremap <silent> <leader>ts :CocList tasks<CR>
" coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-n> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-e>'
let g:coc_snippet_prev = '<c-n>'
imap <C-n> <Plug>(coc-snippets-expand-jump)
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc



Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'rakr/vim-one'
Plug 'KeitaNakamura/neodark.vim'
Plug 'hzchirs/vim-material'
Plug 'dracula/dracula-theme'
Plug 'cormacrelf/vim-colors-github'
Plug 'sheerun/vim-polyglot'
Plug 'icymind/neosolarized'
Plug 'mhartington/oceanic-next'
Plug 'vim-scripts/oceandeep'
Plug 'rebelot/heirline.nvim'



Plug 'vim-scripts/taglist.vim'

call plug#end()
" ==================== Dress up my vim ====================
" set termguicolors " enable true colors support
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" hi NonText ctermfg=gray guifg=grey10
"hi SpecialKey ctermfg=blue guifg=grey70
"


" none X terminal
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
	set termguicolors
endif




" ==================== Dress up my vim ====================
set termguicolors " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:airline_theme='bubblegum'

let g:airline_theme='solarized'


" silent! color deus
" silent! color material

colorscheme vim-material
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'rakr/vim-one'
Plug 'KeitaNakamura/neodark.vim'
Plug 'hzchirs/vim-material'
" Palenight

" Compile function
noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		set splitbelow
		:sp
		:res -5
		term gcc % -o %< && time ./%<
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'cs'
		set splitbelow
		silent! exec "!mcs %"
		:sp
		:res -5
		:term mono %<.exe
	elseif &filetype == 'java'
		set splitbelow
		:sp
		:res -5
		term javac % && time java %<
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'racket'
		set splitbelow
		:sp
		:res -5
		term racket %
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc

map <LEADER>r :r !fl -_-Go

"进行版权声明的设置
"添加或更新头
" map <LEADER>r :call TitleDet()<cr>'s
" function AddTitle()
"     call append(0,"//=============================================================================")
"     call append(1,"//")
"     call append(2,"// Author: dantezhu - zhangxiangchen1777@gmail.com")
"     call append(3,"//")
"     call append(5,"//")
"     call append(6,"// Last modified: ".strftime("%Y-%m-%d %H:%M"))
"     call append(7,"//")
"     call append(8,"// Filename: ".expand("%:t"))
"     call append(9,"//")
"     call append(10,"// Description: ")
"     call append(11,"//")
"     call append(12,"//=============================================================================")
"     echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
" endf
" "更新最近修改时间和文件名
" function UpdateTitle()
"     normal m'
"     execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
"     normal ''
"     normal mk
"     execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
"     execute "noh"
"     normal 'k
"     echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
" endfunction
" "判断前10行代码里面，是否有Last modified这个单词，
" "如果没有的话，代表没有添加过作者信息，需要新添加；
" "如果有的话，那么只需要更新即可
" function TitleDet()
"     let n=1
"     "默认为添加
"     while n < 10
"         let line = getline(n)
"         if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
"             call UpdateTitle()
"             return
"         endif
"         let n = n + 1
"     endwhile
"     call AddTitle()
" endfunction
"
"
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

set mouse=a
set encoding=UTF-8
set tabstop=4
set shiftwidth=4
set wrap
set nolist
set linebreak
set cc=80
set termwinsize=8x0
set bri
set previewheight=9
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
if has('termguicolors')
    set termguicolors
endif
set background=dark
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material
set t_Co=256
let g:everforest_transparent_background=1
syntax enable
packloadall
execute pathogen#infect()

syntax on
filetype plugin indent on

autocmd VimEnter * if !argc() | NERDTree | endif
let NERDTreeShowHidden=1
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=1

set hidden
set number relativenumber
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
function! WindowNumber(...)
    let builder = a:1
    let context = a:2
    call builder.add_section('airline_b', '%{tabpagewinnr(tabpagenr())}')
    return 0
endfunction

call airline#add_statusline_func('WindowNumber')
call airline#add_inactive_statusline_func('WindowNumber')
let g:user_emmet_settings = {
\  'variables': {'lang': 'en'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."\t<head>\n"
\              ."\t\t<meta charset=\"${charset}\">\n"
\              ."\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\			   ."\t\t<link rel=\"stylesheet\" href=\"style.css\">\n"
\              ."\t\t<title>Document</title>\n"
\              ."\t</head>\n"
\              ."\t<body>\n\t${child}|\n\t</body>\n"
\              ."</html>",
\    },
\  },
\}
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
cab tlt TlistToggle
cab tlto TlistOpen
let mapleader = " "
nnoremap <leader>no :NERDTree<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>wh <C-W>h
nnoremap <leader>wj <C-W>j
nnoremap <leader>wk <C-W>k
nnoremap <leader>wl <C-W>l
nnoremap <leader>rr <C-R>

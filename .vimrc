set tabstop=2
set shiftwidth=2
set autoindent
set number
execute pathogen#infect()
call pathogen#helptags()
cmap w!! %!sudo tee > /dev/null

" opens NERDTree on startup and places focus on the main window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" maps ctrl+n to toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
" automatically closes nerdtree when vim closes
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


set clipboard=unnamed

set number relativenumber
set nu rnu

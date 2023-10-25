set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set mouse=a
colorscheme slate

call plug#begin()
Plug 'junegunn/vim-easy-align'

Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

Plug 'preservim/nerdtree'

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'



Plug 'itchyny/lightline.vim'


Plug 'mattn/emmet-vim'

" linter
Plug 'dense-analysis/ale'


Plug 'jackguo380/vim-lsp-cxx-highlight'


Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'ervandew/supertab'


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting


filetype plugin on

set omnifunc=syntaxcomplete#Complete

au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS

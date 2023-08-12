--  Local Variabales Alias --
local option = vim.opt
local buffer = vim.b
local global = vim.g
local api = vim.api

-- Buffer Settings --
buffer.fileencoding = "utf-8"

-- KEY MAPPINGS --
option.compatible = false

global.mapleader = " "

-- MOVE 5 LINES AVOVE
api.nvim_set_keymap('n', 'U', '5k', {noremap = true})

-- MOVE 5 LINES BELOW
api.nvim_set_keymap('n', 'E', '5j', {noremap = true}) 

-- FILE SAVING
api.nvim_set_keymap('n', 'S', ':w<CR>', {noremap = true})

-- EXIT THE NEOVIM
api.nvim_set_keymap('n', 'Q', ':q<CR>', {noremap = true})  

-- RE-CONFIG THE SOURCE
api.nvim_set_keymap('n', 'R', ':source $HOME/.config/nvim/init.lua<CR>', {noremap = true})

api.nvim_set_keymap('v', 'J', ':m \'>+1<CR>gv=gv', {noremap = true})
api.nvim_set_keymap('v', 'K', ':m \'<-2<CR>gv=gv', {noremap = true})
-- api.nvim_set_keymap({'v', 'n'}, '<leader>y', '"+y', {noremap = true})

-- exit all Buffer
api.nvim_set_keymap('n', 'QA', ':qa<CR>', {noremap = true})

-- plugins installation
api.nvim_set_keymap('n', 'PI', ':PlugInstall<CR>', {noremap = true})

-- plugins update
api.nvim_set_keymap('n', 'PU', ':PlugUpdate<CR>', {noremap = true})

-- insert two blank lines above/below
api.nvim_set_keymap('n', '2o', 'o<Esc>o', {noremap = true}) 
api.nvim_set_keymap('n', '2O', 'O<Esc>O', {noremap = true})

-- tag bar switch
api.nvim_set_keymap('n', 'TB', ':TagbarToggle<CR>', {noremap = true})

-- screen-split settings
api.nvim_set_keymap('n', 'sr', ':set splitright<CR>:vsplit<CR>', {noremap = true})
api.nvim_set_keymap('n', 'sl', ':set nosplitright<CR>:vsplit<CR>', {noremap = true})
api.nvim_set_keymap('n', 'su', ':set nosplitbelow<CR>:split<CR>', {noremap = true})
api.nvim_set_keymap('n', 'sd', ':set splitbelow<CR>:split<CR>', {noremap = true})

-- window navigation
api.nvim_set_keymap('n', '<LEADER>h', '<C-w>h', {noremap = true})
api.nvim_set_keymap('n', '<LEADER>j', '<C-w>j', {noremap = true})
api.nvim_set_keymap('n', '<LEADER>k', '<C-w>k', {noremap = true}) 
api.nvim_set_keymap('n', '<LEADER>l', '<C-w>l', {noremap = true})

-- window-size adjusting
api.nvim_set_keymap('n', '<up>', ':res +5<CR>', {noremap = true})
api.nvim_set_keymap('n', '<down>', ':res -5<CR>', {noremap = true})
api.nvim_set_keymap('n', '<left>', ':vertical resize-5<CR>', {noremap = true})
api.nvim_set_keymap('n', '<right>', ':vertical resize+5<CR>', {noremap = true})

-- windows exchange
api.nvim_set_keymap('n', 'sv', '<C-w>t<C-w>H', {noremap = true})
api.nvim_set_keymap('n', 'sh', '<C-w>t<C-w>K', {noremap = true})

-- 清除搜索高亮
api.nvim_set_keymap('n', '<LEADER><CR>', ':nohlsearch<CR>', {noremap = true})

-- 当前行移动到屏幕中央  
api.nvim_set_keymap('n', '-', 'nzz', {noremap = true})

-- 下一行移动到屏幕中央
api.nvim_set_keymap('n', '=', 'Nzz', {noremap = true})


-- automatical file-saving
api.nvim_exec(
  [[
  au InsertLeave *.go,*.sh,*.php,*.py,*.lua write
  ]],
  false
)

-- Global Settings --
-- option.showmode = false
option.mouse = "a"

option.number = true
option.relativenumber = true

option.scrolloff = 20

option.filetype = 'on'  
-- vim.o.filetype = 'indent' 
-- vim.o.filetype = 'plugin'
option.filetype = 'plugin', 'indent'

option.backspace = { "indent", "eol", "start" }

option.expandtab = true
option.tabstop = 2
option.shiftwidth = 2
option.shiftround = true
option.autoindent = true
option.smartindent = true

option.wildmenu = true
-- option.hlsearch = false
option.ignorecase = true
option.smartcase = true

option.completeopt = { "menuone", "noselect" }

option.cursorline = true

vim.o.t_ut = ''

-- option.termguicolors  = true

-- signcolumn settings --
option.signcolumn = 'auto' 

-- -- increase the width for more information
-- vim.opt.signcolumn = 'yes:4'
-- 
-- -- display only when coding  
-- vim.cmd([[
--   autocmd InsertLeave * set signcolumn=auto
--   autocmd InsertEnter * set signcolumn=no
-- ]])
-- 
-- -- display according to the file type
-- vim.cmd([[
--   autocmd FileType tex set signcolumn=yes:1
--   autocmd FileType python set signcolumn=auto
-- ]])
-- 
-- -- display according to the Buffer type
-- vim.cmd([[ 
--   autocmd BufReadPost * if &buftype == 'terminal' | set signcolumn=no | endif
-- ]])

-- option.autoread = true
-- vim.cmd("autocmd BufEnter * let &titlestring = expand('%:p')")
option.title = true

-- vim.opt.backup = true
-- vim.opt.backupdir = '~/.cache/vim/backup/'
option.backup = false

-- vim.opt.swapfile = true
-- vim.opt.directory = vim.fn.stdpath("cache") .. "/swapfiles"
option.swapfile = false

option.updatetime = 50

vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("$HOME/.local/share/nvim/undo")

option.exrc = true

-- option.wrap = false

-- tag pages
-- add a tag page
api.nvim_set_keymap('n', 'tu', ':tabe<CR>', {noremap = true})

-- to the next tag page
api.nvim_set_keymap('n', 'tn', ':+tabnext<CR>', {noremap = true})

-- to the previous tag page
api.nvim_set_keymap('n', 'tp', ':-tabnext<CR>', {noremap = true})


-- Specific Plugins --
-- Markdown Preview --
api.nvim_set_keymap(
  'n', 
  'MP',
  ':MarkdownPreview<CR>',
   {noremap = true}
)

-- leaderF --
api.nvim_set_keymap('n', '<LEADER>p', ':leaderf file --popup<CR>', {noremap = true})
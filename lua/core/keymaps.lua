vim.g.mapleader = " "

local keymap = vim.keymap
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- 使用 <Leader>mp 启动 Markdown 预览
map('n', '<Leader>mp', ':MarkdownPreview<CR>', opts)
map('n', '<Leader>ms', ':MarkdownPreviewStop<CR>', opts)
map('n', '<Leader>mt', ':MarkdownPreviewToggle<CR>', opts)

-- 在视觉模式下使用 Tab 缩进
map('v', '<Tab>', '>gv', opts)

-- 在视觉模式下使用 Shift+Tab 反缩进
map('v', '<S-Tab>', '<gv', opts)

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertical 
keymap.set("n", "<leader>sh", "<C-w>s") -- split h shrizontal

-- 单行或多行移动
-- 取消高亮
keymap.set("n", "<leader>nh", ":nohlsearch<CR>:nohl<CR>") -- no highlight

-- terminal
vim.api.nvim_set_keymap('n', '<Leader>ter', ':split<CR>:terminal<CR>', { noremap = true, silent = true })

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- 切换buffer
keymap.set("n", "L", ":bnext<CR>")
keymap.set("n", "H", ":bprevious<CR>")

-- coc
vim.api.nvim_exec([[
" 使用 'coc.nvim' 作為代碼補全
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" 綁定快捷鍵到智能補全功能
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" 設定快捷鍵用於導航診斷信息
nmap <silent> <leader>a <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>d <Plug>(coc-diagnostic-next)

" 設定快捷鍵用於列出所有錯誤
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
]], false)

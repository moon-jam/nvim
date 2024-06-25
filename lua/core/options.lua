local opt = vim.opt

-- 行號
opt.relativenumber = true
opt.number = true

-- 縮排
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- avoid wrap
opt.wrap = false

-- cursor line
opt.cursorline = true

-- activate mouse
opt.mouse:append('a')

-- clipboard
opt.clipboard:append("unnamedplus")

-- 分割窗口位置
opt.splitright = true
opt.splitbelow = true

-- find
opt.ignorecase = true
opt.smartcase = true

-- auto 命令列補全
opt.wildmenu = true
opt.wildmode = 'list:longest'

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"



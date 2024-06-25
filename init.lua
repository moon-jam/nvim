require("plugins.plugins-setup")

require("core.options")
require("core.keymaps")

-- 插件
require("plugins.lualine")
require("plugins/nvim-tree")
require("plugins/treesitter")
require("plugins/lsp")
require("plugins/cmp")
require("plugins/comment")
require("plugins/autopairs")
require("plugins/bufferline")
require("plugins/gitsigns")
require("plugins/telescope")
require("plugins/fomatter")
require("plugins/markdown")

-- 当插入模式离开时自动保存
vim.cmd([[autocmd InsertLeave * silent! w]])

-- 当失去焦点时自动保存
vim.cmd([[autocmd FocusLost * silent! w]])

-- 当窗口切换时自动保存
vim.cmd([[autocmd BufLeave * silent! w]])


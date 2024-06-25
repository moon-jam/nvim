
require('formatter').setup({
    logging = false,
    filetype = {
        lua = {
            -- Lua 格式化配置
            function()
                return {
                    exe = "stylua",
                    args = {},
                    stdin = true
                }
            end
        },
        javascript = {
            -- JavaScript 格式化配置
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
                    stdin = true
                }
            end
        },
        python = {
            -- Python 格式化配置
            function()
                return {
                    exe = "black",
                    args = { "-" },
                    stdin = true
                }
            end
        },
        -- 可以添加更多的文件类型和对应的格式化工具
    }
})

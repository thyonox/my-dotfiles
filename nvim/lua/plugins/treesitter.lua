return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- 自动更新解析器
    config = function()
	local config = require("nvim-treesitter.configs")
	config.setup({
	    highlight = { enable = true }, -- 语法高亮
	    indent = { enable = true }, -- 自动缩进
	    autotag = { enable = true }, -- 自动关闭标签（HTML/JSX 等）
	    ensure_installed = {
		"bash",
		"html",
		"javascript",
		"json",
		"lua",
		"markdown",
		"python",
		"toml",
		"tsx",
		"typescript",
		"vim",
		"xml",
		"yaml",
		"java",
		"vue",
	    },
	})
    end,
}


return {
    {
	"folke/tokyonight.nvim",
	lazy = false, -- 确保主题立即加载
	priority = 1000, -- 优先级高于其它插件
	config = function()
	    require("tokyonight").setup({
		style = "moon", -- 可选：night, storm, day, moon
		transparent = true, -- 启用透明背景
		styles = {
		    comments = { italic = false },
		    keywords = { bold = true },
		},
	    })
	    vim.cmd([[colorscheme tokyonight]])
	end,
    },
}

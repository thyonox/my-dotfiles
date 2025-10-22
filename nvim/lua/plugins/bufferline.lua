return {
	'akinsho/bufferline.nvim',
	version = "*", 
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			mode = "buffers", -- 显示 buffers（可以改为 "tabs"）
			numbers = "none", -- 不显示 buffer 编号（可选："ordinal", "buffer_id", "both"）
			diagnostics = "nvim_lsp", -- 显示 LSP 诊断信息
			diagnostics_indicator = function(count, level, diagnostics_dict, context)
				return "(" .. count .. ")"
			end,
			separator_style = "thin", -- 分隔符样式（可选："slant", "thick", "thin"）
			show_buffer_close_icons = false, -- 显示关闭按钮
			show_close_icon = false, -- 不显示整体关闭按钮
			always_show_bufferline = true, -- 始终显示 bufferline
		},
	},
}


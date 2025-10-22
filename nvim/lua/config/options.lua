local opt = vim.opt

-- 外观与显示
opt.number = true -- 行号
opt.relativenumber = true -- 相对行号
opt.cursorline = true -- 高亮当前行
opt.mouse = "a" -- 启用鼠标支持（所有模式）
opt.showmode = false -- 不显示模式提示（由状态栏插件接管）
opt.breakindent = true -- 换行时保持缩进
opt.linebreak = true -- 在单词边界换行
opt.signcolumn = "yes" -- 始终显示标志列（如诊断、断点）
opt.termguicolors = true -- 启用 24 位真彩色
opt.pumheight = 10 -- 补全菜单最大高度
opt.pumblend = 10 -- 补全菜单透明度

-- 编辑与缩进
opt.shiftwidth = 4 -- 缩进宽度4
opt.tabstop = 4 -- Tab宽度4
opt.autoindent = true -- 自动缩进，继承上一行缩进
opt.smartindent = true -- 智能缩进
opt.shiftround = true -- 缩进时自动对齐到最近的缩进级别
opt.clipboard = "unnamedplus" -- 与系统剪贴板同步

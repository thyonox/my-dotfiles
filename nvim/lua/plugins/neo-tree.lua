return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- 可选，用于文件图标
    "MunifTanjim/nui.nvim",
  },
  opts = {
    close_if_last_window = true, -- 如果是最后一个窗口，关闭 neo-tree
    popup_border_style = "rounded", -- 弹出窗口的边框样式
    enable_git_status = true, -- 启用 Git 状态显示
    enable_diagnostics = true, -- 启用 LSP 诊断
    filesystem = {
      filtered_items = {
        visible = false, -- 是否显示隐藏文件
        hide_dotfiles = false, -- 显示以 . 开头的文件
        hide_gitignored = true, -- 隐藏 .gitignore 中的文件
        hide_by_name = {
          -- "node_modules", -- 可添加不想显示的文件/目录
        },
      },
      follow_current_file = {
        enabled = true, -- 自动聚焦到当前文件
      },
      use_libuv_file_watcher = true, -- 自动刷新文件树
    },
    buffers = {
      follow_current_buffer = {
        enabled = true, -- 自动聚焦到当前 buffer
      },
    },
    window = {
      position = "left", -- 文件树位置：left, right, float
      width = 40, -- 侧边栏宽度
      mappings = {
        ["<space>"] = "none", -- 禁用默认的 <space> 映射，防止冲突
        ["o"] = "open", -- 按 o 打开文件
        ["h"] = "navigate_up", -- 按 h 回到上级目录
        ["l"] = "focus_preview", -- 按 l 聚焦预览窗口
      },
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
  end,
}

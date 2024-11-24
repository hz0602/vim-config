local opt_arg = {
	disable_netrw = true,

    sort_by = "case_sensitive",

	-- 是否显示 git 状态
	git = {
		enable = false,
	},

	-- 过滤文件
	filters = {
		dotfiles = true, -- 过滤 dotfile
		custom = { "node_modules" }, -- 其他过滤目录
	},

    view = {
        signcolumn = "yes", -- 显示图标,
        float = {
            enable = true
        },
    },

    renderer = {
        icons = {
            show = {
               file = false,
               folder = false,
               folder_arrow = false,
            }
        },
        indent_markers = {
            enable = true,
        }
    },
}
return {
	"kyazdani42/nvim-tree.lua",
	opts = opt_arg,
	keys = {
		{ "<leader>d", ":NvimTreeToggle ./<CR>", silent = true, noremap = true },
		{ "<leader>t", ":NvimTreeToggle<CR>", silent = true, noremap = true },
	}
}

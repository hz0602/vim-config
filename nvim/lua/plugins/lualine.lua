local opt_arg = {
	options = {
	  icons_enabled = true,
	  theme = 'auto',
	  component_separators = { left = '', right = ''},
	  section_separators = { left = '', right = ''},
	  disabled_filetypes = {
		statusline = {},
		winbar = {},
	  },
	  ignore_focus = {},
	  always_divide_middle = true,
	  globalstatus = false,
	  refresh = {
		statusline = 1000,
		tabline = 1000,
		winbar = 1000,
	  }
	},
	sections = {
	  lualine_a = {'mode'},
	  lualine_b = {'%l/%L'},
	  lualine_c = {'filename'},
	  lualine_x = {'encoding', 'fileformat', 'filetype'},
	  lualine_y = {'filesize'},
	  lualine_z = {'hostname'}
	},
	inactive_sections = {
	  lualine_a = {'filename'},
	  lualine_b = {'%L'},
	  lualine_c = {},
	  lualine_x = {},
	  lualine_y = {},
	  lualine_z = {'filesize'}
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {}
}

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = opt_arg,
	event = "VeryLazy"
}

local opt_arg = {
	defaults = {
        layout_strategy = 'horizontal',
        layout_config = {
            height = 0.9,
            width = 0.8,
            prompt_position = "bottom",
            preview_width = 0.6,
        },
        preview = {
            treesitter = false,
        },
	},
}

return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	opts = opt_arg,
	keys = {
		{ "<leader>ff", ":lua require('telescope.builtin').fd({previewer=false})<CR>", silent = true, noremap = true },
		{ "<leader>fg", ":lua require('telescope.builtin').live_grep()<CR>", silent = true, noremap = true },
		{ "<leader>fh", ":lua require('telescope.builtin').help_tags({previewer=false})<CR>", silent = true, noremap = true },
		{ "<leader>fc", ":lua require('telescope.builtin').live_grep({grep_open_files=true})<CR>", silent = true, noremap = true },
	}
}

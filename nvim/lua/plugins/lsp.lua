server = {
	'pyright',
    'clangd'
}

local function cmp_fun()
	local cmp = require('cmp')

	-- Global setup.
	cmp.setup({
		snippet = {
			expand = function(args)
				vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
				-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
				-- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
				-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
				-- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
			end,
		},


    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    }),


	  mapping = cmp.mapping.preset.insert({
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-c>'] = cmp.mapping.complete(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
	  }),
	})
end

local function lsp_fun()
	local lspconfig = require('lspconfig')
	for i, v in ipairs(server) do
		lspconfig[v].setup {}
	end
end

return {
	'neovim/nvim-lspconfig',
	dependencies = {
		{ 'williamboman/mason.nvim', opts = {} },
		{
			'williamboman/mason-lspconfig.nvim',
			opts = { ensure_installed = server }
		},
		{
			'hrsh7th/nvim-cmp',
			dependencies = {
				{ 'hrsh7th/cmp-nvim-lsp', opts = {} },
				{ 'hrsh7th/cmp-buffer' },
                { 'hrsh7th/cmp-vsnip' },
                { 'hrsh7th/vim-vsnip' },
				{ 'rafamadriz/friendly-snippets' }
			},
			opts = {},
			config = cmp_fun
		},
		{
			"rmagatti/goto-preview",
  			config = true,
		}
	},
	opts = {},
	config = lsp_fun,
	ft = { "python", "c", "cpp" }
}

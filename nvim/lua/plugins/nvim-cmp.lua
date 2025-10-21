return {
	'hrsh7th/nvim-cmp',
	dependencies = { 'hrsh7th/cmp-cmdline', 'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/nvim-lspconfig', 'saadparwaiz1/cmp_luasnip', 'onsails/lspkind.nvim'},
	config = function()
		local cmp = require('cmp')
		local lspkind = require('lspkind')

		cmp.setup({
			formatting = {
				format = lspkind.cmp_format({
					mode = 'symbol',
					maxwidth = {
						menu = 50,
						abbr = 50,
					},
					ellipsis_char = '.....',
					show_labelDetails = true,
				}),
			},
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-h>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<CR>'] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
			}, {
				{ name = 'buffer' },
			}),
		})
	end,
}

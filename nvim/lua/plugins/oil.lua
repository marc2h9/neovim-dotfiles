return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
	config = function()
		require("oil").setup({
			view_options = {
				show_hidden = true
			}
		})
		vim.keymap.set('n', '<C-K>ff', "<CMD>Oil<CR>", { desc = 'Open Oil Menu' })
	end,
}

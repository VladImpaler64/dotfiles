function UseColorScheme(color)
	color = color or "catppuccin"
	require("catppuccin").setup({
		flavour = "mocha", -- latte, frappe, macchiato, mocha
		transparent_background = true,
		color_overrides = {
			all = {},
			latte = {},
			frappe = {},
			macchiato = {},
			mocha = {
				rosewater = "#F5E0DC",
				flamingo = "#F2CDCD",
				pink = "#e398e3", -- Unicode
				mauve = "#c46077", -- Keywords
				red = "#F38BA8",
				maroon = "#edc5ed", -- Special
				peach = "#80321f", -- Nativos 
				yellow = "#df901f", -- Types
				green = "#d6bf96", -- String
				teal = "#676e56", -- Macros
				sky = "#d8a9d8", -- Signs
				sapphire = "#a500e0",
				blue = "#377299", -- Functions
				lavender = "#c8c0ff", -- std
				overlay0 = "#2b2d3b", -- Comments
			},
		},
		styles = {
			keywords = { "bold" }
		}
	})
	vim.cmd.colorscheme(color)
end

UseColorScheme()
require 'nvim-highlight-colors'.setup()

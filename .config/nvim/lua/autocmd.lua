vim.api.nvim_create_autocmd( 
	{ "BufNewFile", "BufRead" },
	{ pattern = "*.tex", command = "set filetype=tex" }
)

vim.api.nvim_create_autocmd(
	"Filetype",
	{ pattern = "tex", command = "setlocal spell" }
)

vim.api.nvim_create_autocmd(
	"Filetype",
	{ pattern = "markdown", command = "setlocal spell" }
)

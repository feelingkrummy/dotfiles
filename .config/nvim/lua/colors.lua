colors = {}
function colors.setColorScheme( scheme )
	scheme = scheme or "gruvbox-hard"
	if scheme == "gruvbox-hard" then
		vim.g.gruvbox_contrast_dark = "hard" 
		vim.opt.background = "dark"
		vim.cmd("colorscheme gruvbox")
	end
end
return colors

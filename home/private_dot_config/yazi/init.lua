require("git"):setup()
require("full-border"):setup()
require("starship"):setup()
require("eza-preview"):setup({
	default_tree = true,
	level = 3,
	follow_symlinks = true,
	dereference = true,
	all = true,
})

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			-- Your existing neo-tree configuration options (if any) go here
		})

		-- Add the keymap for <C-b>
		vim.api.nvim_set_keymap("n", "<C-n>", ":Neotree toggle left<CR>", { noremap = true, silent = true })
	end,
}

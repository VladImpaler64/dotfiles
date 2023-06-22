--disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.g.mapleader = " "
vim.wo.relativenumber = true
vim.keymap.set("i", "ñj", "<Esc>")
vim.o.scrolloff = 8
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.cmd("autocmd BufEnter * set formatoptions-=cro") -- Para quitar \n en los comentarios
-- function CheckFT()
-- 	if vim.bo.filetype == "NvimTree" then
-- 		return
-- 	else
-- 		vim.cmd(".tab sball | tabprevious")
-- 	end
-- end
-- vim.cmd("autocmd BufRead * lua CheckFT()")
--terminal config
vim.opt.shell = "pwsh"
vim.keymap.set("t", "ñj", [[<C-\><C-n>]])
vim.opt.signcolumn = "yes"
vim.opt.shell = "pwsh"
-- terminal movement
vim.keymap.set("n", "<S-Up>", "<cmd>horizontal resize -4<CR>")
vim.keymap.set("n", "<S-Down>", "<cmd>horizontal resize +4<CR>")
vim.keymap.set("n", "<S-Left>", "<cmd>vertical resize -4<CR>")
vim.keymap.set("n", "<S-Right>", "<cmd>vertical resize +4<CR>")
--Window move
vim.keymap.set("n", "<Tab>", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<S-Tab>", function()
	if vim.bo.filetype == "NvimTree" then
		vim.cmd("wincmd w")
	else
	vim.cmd("wincmd w")
	end
end)
--Remaps
vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("n", "<leader>t", function()
	if vim.bo.buftype ~= "terminal" then
		vim.cmd("bel 6split")
		vim.cmd("terminal")
	else
		vim.cmd("bun!")
	end
end)
vim.keymap.set("n", "<leader>q", "<cmd>qa<CR>")
vim.keymap.set("n", "<leader>c", function()
	if vim.bo.buftype ~= "terminal" then
		vim.cmd("bd")
	else
		vim.cmd("bun!")
	end
end
)
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>") -- Abrir el explorador
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>") -- Guardar
vim.keymap.set("n", "<leader>l", '<cmd>let @/=""<CR>') -- Limpiar la selección
vim.keymap.set("n", "<leader>vs", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<C-down>", "<C-d>zz")
vim.keymap.set("n", "<C-up>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", "{", "{}<Esc>ha")
vim.keymap.set("i", "(", "()<Esc>ha")
vim.keymap.set("i", "[", "[]<Esc>ha")
vim.keymap.set("i", '"', '""<Esc>ha')
vim.keymap.set("i", "`", "``<Esc>ha")
vim.keymap.set("i", "/*", "/*  */<Esc>hhha")

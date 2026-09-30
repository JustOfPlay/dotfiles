-- Ctrl S
vim.keymap.set("i", "<C-s>", "<Esc>:write<CR>", { desc = "Save and exit insert mode" })
vim.keymap.set("n", "<C-s>", "<cmd>write<CR>", { desc = "Save" })

-- Leader E
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {
	desc = "Toggle file explorer",
})



-- Delete without overwriting registers
vim.keymap.set("n", "d", '"_d')
vim.keymap.set("n", "dd", '"_dd')
vim.keymap.set("v", "d", '"_d')



-- Quit all
vim.keymap.set("n", "<leader>q", "<cmd>qall<CR>", {
	desc = "Quit all",
})

-- Write and quit all
vim.keymap.set("n", "<leader>w", "<cmd>wqall<CR>", {
	desc = "Write and quit all",
})


-- LL
vim.keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<CR>", {
	desc = "Find files",
})

-- Tabs
vim.keymap.set("n", "<S-H>", "<cmd>BufferLineCyclePrev<CR>", {
	desc = "Previous tab",
})

vim.keymap.set("n", "<S-L>", "<cmd>BufferLineCycleNext<CR>", {
	desc = "Next tab",
})

vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>", {
	desc = "Close tab",
})

-- Format
vim.keymap.set("v", "<Tab>", ">gv", {
	desc = "Indent selection",
})

vim.keymap.set("v", "<S-Tab>", "<gv", {
	desc = "Unindent selection",
})

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
	desc = "Go to definition",
})

vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {
	desc = "Go to declaration",
})

vim.keymap.set("n", "gr", vim.lsp.buf.references, {
	desc = "Find references",
})

vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {
	desc = "Go to implementation",
})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {
	desc = "Show documentation",
})

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {
	desc = "Rename symbol",
})

vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {
	desc = "Code action",
})

vim.keymap.set("n", "<leader>cf", function()
	vim.lsp.buf.format({ async = true })
end, {
desc = "Format code",
})

-- Diagnostics
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, {
	desc = "Show diagnostic",
})

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {
	desc = "Previous diagnostic",
})

vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {
	desc = "Next diagnostic",
})

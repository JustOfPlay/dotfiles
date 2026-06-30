-- Absolute Line number
vim.opt.number = true
vim.opt.relativenumber = false

-- LSP update_in_insert
vim.diagnostic.config({
   update_in_insert = true,
})

-- Disable format on save (default is true)
vim.g.autoformat = false



vim.keymap.set({ "n", "t" }, "<C-CR>", function()
  require("snacks.terminal").toggle()
end)

local M = {}

M.setup = function()
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "deep-purple"

    local groups = require("deep-purple.groups").setup()
    for group, setting in pairs(groups) do
        vim.api.nvim_set_hl(0, group, setting)
    end
end

return M

-- LazyGit💤

-- version 2.1

local M = {}

M.state = {
    floating = {
        buf = -1,
        win = -1,
    },
}

M.toggle_float = function(opts)
    opts = opts or {}
    local x = opts.x or 0.9
    local y = opts.y or 0.9

    local buf = nil
    if vim.api.nvim_buf_is_valid(opts.buf) then
        buf = opts.buf
    else
        buf = vim.api.nvim_create_buf(false, true) -- buffer be like
    end

    local win_conf = require("custom.modules.dimension")(x, y) -- use custom.dimension to get window stats
    local win = vim.api.nvim_open_win(buf, true, win_conf)

    return { buf = buf, win = win }
end

M.toggle_lazygit = function()
    if vim.api.nvim_win_is_valid(M.state.floating.win) then -- if visible
        vim.api.nvim_win_hide(M.state.floating.win) -- hide
    else
        M.state.floating = M.toggle_float({
            x = 0.8,
            y = 0.8,
            buf = M.state.floating.buf,
        }) -- tells it to use the same buffer
        if vim.bo[M.state.floating.buf].buftype ~= "terminal" then -- if buftype isn't terminal
            vim.cmd.terminal("lazygit") -- enter terminal
        end
    end
    vim.cmd("startinsert")
end

M.setup = function()
    vim.api.nvim_create_user_command("Lazygit", M.toggle_lazygit, {})

    vim.keymap.set({ "n", "t" }, "<leader>lg", "<CMD>Lazygit<CR>")
    vim.keymap.set({ "n", "t" }, "<leader>gl", "<CMD>Lazygit<CR>")
end

return M

-- TODO: todo
-- - [ ] User config

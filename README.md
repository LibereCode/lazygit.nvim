# README lazygit

Originally one of my _pseudoplugins_ `lua/custom/lazygit.lua`

> [!WARNING] DISCLAIMER
> This plugin is MEGA alpha, and will 100% have many bugs/weird behavior.
> If you see any obvious shit code, please tell me 🥰.
>
> ALSO NOTE:
> The command `lazygit` is not created by me. Checkout the original
> repo called: [lazygit](https://github.com/jesseduffield/lazygit)

## USE

First add install it manually or with your favorite plugin-manager

### lazy.nvim

```lua init.lua
-- Together with other files -- can remove one set of {} if alone
return {
    -- ... other plugins
    { 'LibereCode/lazygit.nvim', opts = {} },
    -- ... other plugins
}
```

### vim.pack

```lua init.lua
-- This is the builtin package manager for nvim. see `:h vim.pack`
vim.pack.add({
    -- ... other plugins
    'https://github.com/LibereCode/lazygit.nvim',
    -- ... other plugins
})

local lg, map = require('lazygit'), vim.keymap.set
lg.setup() -- loads default config
-- OR --
map({'n', 't'}, "<leader>gg", lg.toggle_lazygit,
    {silent = true, desc = "lazygit plugin?"})
```

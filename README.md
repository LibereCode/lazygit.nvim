# README lazygit

Originally one of my _pseudoplugins_ `lua/custom/lazygit.lua`

> [!NOTE]
> The command `lazygit` is not created by me. Checkout the original
> repo called: [lazygit](https://github.com/jesseduffield/lazygit)

## USE

First add install it manually or with your favorite plugin-manager

### lazy.nvim

```lua init.lua
-- Together with other files --
return {
    -- ... other plugins
    { 'LibereCode/lazygit.nvim' },
    -- ... other plugins
}

-------------------------------------

-- Standalone file --
return { 'LibereCode/lazygit.nvim' },
```

### vim.pack

```lua init.lua
-- This is the builtin package manager for nvim. see `:h vim.pack`
vim.pack.add({
    -- ... other plugins
    'https://github.com/LibereCode/lazygit.nvim',
    -- ... other plugins
})

-- No `require('lazygit').setup()` is needed... yet
-- (because this plugin is in its infantcy, and hasen't come to that yet...)
```

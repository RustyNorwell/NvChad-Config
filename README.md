# Installation

Clone this repo to your `.config/nvim/lua` directory and rename it to `custom`:

```
git clone git@github.com:RustyNorwell/NvChad-Config.git ~/.config/nvim/lua/custom
```

Also make sure to:

1) put `require('custom.mappings')` inside `.config/nvim/init.lua`
2) put `M.plugins = 'custom.plugins'` inside `config/nvim/lua/chadrc.lua`

And then you have to do a bunch of crazy shit . . . .

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 
 ## Copy nvim config locally
 
 nvim
```

[https://github.com/wbthomason/packer.nvim#quickstart]

```vim
-- You must run this or `PackerSync` whenever you make changes to your plugin configuration
-- Regenerate compiled loader file
:PackerCompile

-- Remove any disabled or unused plugins
:PackerClean

-- Clean, then install missing plugins
:PackerInstall

-- Clean, then update and install plugins
:PackerUpdate

-- Perform `PackerUpdate` and then `PackerCompile`
:PackerSync

-- Loads opt plugin immediately
:PackerLoad completion-nvim ale
```

And some neck bears wonder why VS Code is so popular . . . . 


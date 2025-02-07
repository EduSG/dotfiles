local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

package.path = package.path .. ';/home/eduardo/.luarocks/share/lua/5.1/?.lua;/home/eduardo/.luarocks/share/lua/5.1/?/init.lua'
package.cpath = package.cpath .. ';/home/eduardo/.luarocks/lib/lua/5.1/?.so'
require("core.options")
package.cpath = package.cpath .. ';/path/to/luarocks/lib/lua/5.1/?.so'
require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

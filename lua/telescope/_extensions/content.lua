#!/usr/bin/lua

local has_telescope, telescope = pcall(require, "telescope")
if not has_telescope then
   error("This extension requires telescope.nvim")
end

local lp_actions = require("telescope._extensions.content.actions")
local lp_config = require("telescope._extensions.content.config")
local lp_finder = require("telescope._extensions.content.finder")
local lp_picker = require("telescope._extensions.content.picker")
local lp_health = require("telescope._extensions.content.healthcheck")

return telescope.register_extension({
   setup = lp_config.setup,
   health = lp_health,
   exports = {
      content = lp_picker,
      actions = lp_actions,
      finder = lp_finder,
   },
})

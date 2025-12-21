---@meta _
-- Generated API for game version 0.9.1

---@class TextRegistry : Node
---@field LOWERCASE_ALPHABETS string # Constant value: abcdefghijklmnopqrstuvwxyz
---@field animals Object
---@field adjectives Object
---@field first_names Object
local TextRegistry = {}

---@param call_randomize boolean?  # Default = true
---@return Object
function TextRegistry.get_random_player_name(call_randomize) end

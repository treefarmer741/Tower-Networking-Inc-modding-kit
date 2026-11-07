---@meta _

-- Provide additional typing on-top of godot/Object.lua which is generated.

---@class Object : userdata
local Object = {}


---@param target any  # One of; `Script` instance, script class_name, or resource path to the script file.
---@return integer
function Object:is(target) end

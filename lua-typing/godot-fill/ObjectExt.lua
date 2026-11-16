---@meta _

-- Provide additional typing on-top of godot/Object.lua which is generated.

---@class Object : userdata
local Object = {}


--- Check if this object is or inherits from;
--- - the given `Script`
--- - the given `string` class name of GDScript or Godot/ClassDB class
--- - the given `resource_path`
--- Note that, autoloads like `ModApiV1` can not be checked for by class name.
---@param target any
---@return integer
function Object:is(target) end

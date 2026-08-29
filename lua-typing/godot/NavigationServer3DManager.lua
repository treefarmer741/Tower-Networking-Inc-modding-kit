---@meta _
-- Generated API for game version 0.12.1

---@class NavigationServer3DManager : Object
local NavigationServer3DManager = {}

---@param name string
---@param create_callback (Callable|function)
function NavigationServer3DManager.register_server(name, create_callback) end

---@param name string
---@param priority integer
function NavigationServer3DManager.set_default_server(name, priority) end

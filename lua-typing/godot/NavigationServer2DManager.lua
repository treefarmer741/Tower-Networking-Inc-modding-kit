---@meta _
-- Generated API for game version 0.12.1

---@class NavigationServer2DManager : Object
local NavigationServer2DManager = {}

---@param name string
---@param create_callback (Callable|function)
function NavigationServer2DManager.register_server(name, create_callback) end

---@param name string
---@param priority integer
function NavigationServer2DManager.set_default_server(name, priority) end

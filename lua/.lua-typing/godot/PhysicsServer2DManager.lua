---@meta _
-- Generated API for game version 0.10.0

---@class PhysicsServer2DManager : Object
local PhysicsServer2DManager = {}

---@param name string
---@param create_callback (Callable|function)
function PhysicsServer2DManager.register_server(name, create_callback) end

---@param name string
---@param priority integer
function PhysicsServer2DManager.set_default_server(name, priority) end

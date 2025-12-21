---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsServer3DManager : Object
local PhysicsServer3DManager = {}

---@param name string
---@param create_callback (Callable|function)
function PhysicsServer3DManager.register_server(name, create_callback) end

---@param name string
---@param priority integer
function PhysicsServer3DManager.set_default_server(name, priority) end

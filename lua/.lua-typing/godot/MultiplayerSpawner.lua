---@meta _
-- Generated API for game version 0.9.1

---@class MultiplayerSpawner : Node
---@field spawn_path string
---@field spawn_limit integer
---@field spawn_function (Callable|function)
local MultiplayerSpawner = {}

---@param path string
function MultiplayerSpawner.add_spawnable_scene(path) end

---@return integer
function MultiplayerSpawner.get_spawnable_scene_count() end

---@param index integer
---@return string
function MultiplayerSpawner.get_spawnable_scene(index) end

function MultiplayerSpawner.clear_spawnable_scenes() end

---@param data Object?  # Default = <null>
---@return Node
function MultiplayerSpawner.spawn(data) end

---@return string
function MultiplayerSpawner.get_spawn_path() end

---@param path string
function MultiplayerSpawner.set_spawn_path(path) end

---@return integer
function MultiplayerSpawner.get_spawn_limit() end

---@param limit integer
function MultiplayerSpawner.set_spawn_limit(limit) end

---@return (Callable|function)
function MultiplayerSpawner.get_spawn_function() end

---@param spawn_function (Callable|function)
function MultiplayerSpawner.set_spawn_function(spawn_function) end

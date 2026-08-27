---@meta _
-- Generated API for game version 0.12.1

---@class Runtime : Node
---@field SERVER_URL string # Constant value: ws://127.0.0.1:6505
---@field LOG_RING_CAPACITY integer # Constant value: 500
local Runtime = {}

---@param level string
---@param text string
function Runtime.push_runtime_log(level, text) end

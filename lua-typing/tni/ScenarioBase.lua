---@meta _
-- Generated API for game version 0.13.4

---@class ScenarioBase : RefCounted
---@field probe Node
local ScenarioBase = {}

function ScenarioBase.run() end

---@param from integer
---@param to integer
---@param span number
---@param loc_idx integer?  # Default = 0
---@return Array<any>
function ScenarioBase.socket_pair_positions(from, to, span, loc_idx) end

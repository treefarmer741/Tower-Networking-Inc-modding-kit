---@meta _
-- Generated API for game version 0.10.11

---@class PocosiaTextRegistry : Node
---@field MAX_ATTEMPTS integer # Constant value: 10
local PocosiaTextRegistry = {}

function PocosiaTextRegistry.clear_registry() end

---@param node Node
---@param seed_i integer
---@param lists Array<any>
---@param separator string
---@return string
function PocosiaTextRegistry.generate_deterministic_string(node, seed_i, lists, separator) end

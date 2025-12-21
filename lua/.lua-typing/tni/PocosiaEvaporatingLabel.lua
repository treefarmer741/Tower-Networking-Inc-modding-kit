---@meta _
-- Generated API for game version 0.9.1

---@class PocosiaEvaporatingLabel : Label
---@field evaporation_height number
---@field evaporation_duration number
local PocosiaEvaporatingLabel = {}

---@param node Node
---@param msg string
function PocosiaEvaporatingLabel.sample_add(node, msg) end

function PocosiaEvaporatingLabel.dealloc() end

---@param relative_global_rotation number
function PocosiaEvaporatingLabel.ensure_upright(relative_global_rotation) end

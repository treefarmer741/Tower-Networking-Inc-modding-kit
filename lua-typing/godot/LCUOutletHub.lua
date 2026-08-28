---@meta _
-- Generated API for game version 0.12.1

---@class LCUOutletHub : Node
---@field LGCTLSCN string # Constant value: <PackedScene>
---@field VSSCN string # Constant value: <PackedScene>
---@field outlet_location Node
---@field switch_controller LogicController
local LCUOutletHub = {}

---@param outlet LCUOutlet
function LCUOutletHub.register_outlet(outlet) end

---@param outlets Array<any>
function LCUOutletHub.register_outlets_batch(outlets) end

---@meta _
-- Generated API for game version 0.13.4

---@class S13PlugSwing : RefCounted
---@field ProbeRigScript Object # Constant value: (res://probes/cables/lib/probe_rig.gd):<GDScript#-9223366169023373062>
---@field probe Node
local S13PlugSwing = {}
---@enum S13PlugSwing.MAKES
S13PlugSwing.MAKES = {
	["eth"] = "res://scenes/components/cables/cable_o_matic_makes/eth_Xp.tscn",
	["pdc"] = "res://scenes/components/cables/cable_o_matic_makes/pdc_Xp.tscn",
	["pma"] = "res://scenes/components/cables/cable_o_matic_makes/pma_Xp.tscn",
	["fib"] = "res://scenes/components/cables/cable_o_matic_makes/fibsc_Xp.tscn",
}

function S13PlugSwing.run() end

function S13PlugSwing.run() end

---@param from integer
---@param to integer
---@param span number
---@param loc_idx integer?  # Default = 0
---@return Array<any>
function S13PlugSwing.socket_pair_positions(from, to, span, loc_idx) end

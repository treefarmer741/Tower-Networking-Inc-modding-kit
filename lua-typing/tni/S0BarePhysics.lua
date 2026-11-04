---@meta _
-- Generated API for game version 0.13.4

---@class S0BarePhysics : RefCounted
---@field PIECE_LEN number # Constant value: 25.0
---@field CHAIN integer # Constant value: 30
---@field IntegratingBody Object # Constant value: (res://probes/cables/lib/integrating_body.gd):<GDScript#-9223366167932854029>
---@field probe Node
local S0BarePhysics = {}

function S0BarePhysics.run() end

---@return number
function S0BarePhysics.arg_settle() end

function S0BarePhysics.run() end

---@param from integer
---@param to integer
---@param span number
---@param loc_idx integer?  # Default = 0
---@return Array<any>
function S0BarePhysics.socket_pair_positions(from, to, span, loc_idx) end

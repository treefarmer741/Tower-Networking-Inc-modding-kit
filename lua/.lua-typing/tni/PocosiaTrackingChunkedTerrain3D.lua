---@meta _
-- Generated API for game version 0.9.1

---@class PocosiaTrackingChunkedTerrain3D : Node3D
---@field master_seed integer
---@field terrain_layers Array<any>
---@field tracking_nodes Array<any>
---@field chunk_update_period_s number
---@field update_timer Timer
---@field is_enabled boolean
local PocosiaTrackingChunkedTerrain3D = {}

function PocosiaTrackingChunkedTerrain3D.enable() end

function PocosiaTrackingChunkedTerrain3D.disable() end

---@param n3d Node3D
---@param layer integer?  # Default = 0
---@return Vector2i
function PocosiaTrackingChunkedTerrain3D.get_chunk_coordinates(n3d, layer) end

---@param layer integer?  # Default = 0
---@return Vector2
function PocosiaTrackingChunkedTerrain3D.get_chunk_size(layer) end

---@meta _
-- Generated API for game version 0.9.1

---@class SimpleTerrain : Node3D
---@field width integer
---@field depth integer
---@field height_scale integer
---@field max_height integer
---@field noise_seed integer
---@field noise_frequency number
---@field noise_octaves integer
---@field noise_type FastNoiseLite.NoiseType
---@field terrain_material StandardMaterial3D
---@field generate_collision boolean
---@field collision_layers integer
---@field collision_mask integer
---@field mesh_instance MeshInstance3D
---@field static_body StaticBody3D
---@field collision_shape CollisionShape3D
---@field generated_terrain_hash integer
local SimpleTerrain = {}

---@return Object
function SimpleTerrain.get_terrain_hash() end

function SimpleTerrain.generate_terrain() end

---@param world_x number
---@param world_z number
---@return number
function SimpleTerrain.get_height_at_position(world_x, world_z) end

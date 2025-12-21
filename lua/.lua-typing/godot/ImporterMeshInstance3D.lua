---@meta _
-- Generated API for game version 0.9.1

---@class ImporterMeshInstance3D : Node3D
---@field mesh ImporterMesh
---@field skin Skin
---@field skeleton_path string
---@field layer_mask integer
---@field cast_shadow integer
---@field visibility_range_begin number
---@field visibility_range_begin_margin number
---@field visibility_range_end number
---@field visibility_range_end_margin number
---@field visibility_range_fade_mode integer
local ImporterMeshInstance3D = {}

---@param mesh ImporterMesh
function ImporterMeshInstance3D.set_mesh(mesh) end

---@return ImporterMesh
function ImporterMeshInstance3D.get_mesh() end

---@param skin Skin
function ImporterMeshInstance3D.set_skin(skin) end

---@return Skin
function ImporterMeshInstance3D.get_skin() end

---@param skeleton_path string
function ImporterMeshInstance3D.set_skeleton_path(skeleton_path) end

---@return string
function ImporterMeshInstance3D.get_skeleton_path() end

---@param layer_mask integer
function ImporterMeshInstance3D.set_layer_mask(layer_mask) end

---@return integer
function ImporterMeshInstance3D.get_layer_mask() end

---@param shadow_casting_setting GeometryInstance3D.ShadowCastingSetting
function ImporterMeshInstance3D.set_cast_shadows_setting(shadow_casting_setting) end

---@return GeometryInstance3D.ShadowCastingSetting
function ImporterMeshInstance3D.get_cast_shadows_setting() end

---@param distance number
function ImporterMeshInstance3D.set_visibility_range_end_margin(distance) end

---@return number
function ImporterMeshInstance3D.get_visibility_range_end_margin() end

---@param distance number
function ImporterMeshInstance3D.set_visibility_range_end(distance) end

---@return number
function ImporterMeshInstance3D.get_visibility_range_end() end

---@param distance number
function ImporterMeshInstance3D.set_visibility_range_begin_margin(distance) end

---@return number
function ImporterMeshInstance3D.get_visibility_range_begin_margin() end

---@param distance number
function ImporterMeshInstance3D.set_visibility_range_begin(distance) end

---@return number
function ImporterMeshInstance3D.get_visibility_range_begin() end

---@param mode GeometryInstance3D.VisibilityRangeFadeMode
function ImporterMeshInstance3D.set_visibility_range_fade_mode(mode) end

---@return GeometryInstance3D.VisibilityRangeFadeMode
function ImporterMeshInstance3D.get_visibility_range_fade_mode() end

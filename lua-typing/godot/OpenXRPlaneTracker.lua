---@meta _
-- Generated API for game version 0.12.1

---@class OpenXRPlaneTracker : OpenXRSpatialEntityTracker
---@field bounds_size integer
---@field plane_alignment integer
---@field plane_label string
local OpenXRPlaneTracker = {}

---@param bounds_size Vector2
function OpenXRPlaneTracker.set_bounds_size(bounds_size) end

---@return Vector2
function OpenXRPlaneTracker.get_bounds_size() end

---@param plane_alignment OpenXRSpatialComponentPlaneAlignmentList.PlaneAlignment
function OpenXRPlaneTracker.set_plane_alignment(plane_alignment) end

---@return OpenXRSpatialComponentPlaneAlignmentList.PlaneAlignment
function OpenXRPlaneTracker.get_plane_alignment() end

---@param plane_label string
function OpenXRPlaneTracker.set_plane_label(plane_label) end

---@return string
function OpenXRPlaneTracker.get_plane_label() end

---@param origin Transform3D
---@param vertices PackedVector2Array
---@param indices PackedInt32Array?  # Default = []
function OpenXRPlaneTracker.set_mesh_data(origin, vertices, indices) end

function OpenXRPlaneTracker.clear_mesh_data() end

---@return Transform3D
function OpenXRPlaneTracker.get_mesh_offset() end

---@return Mesh
function OpenXRPlaneTracker.get_mesh() end

---@param thickness number?  # Default = 0.01
---@return Shape3D
function OpenXRPlaneTracker.get_shape(thickness) end

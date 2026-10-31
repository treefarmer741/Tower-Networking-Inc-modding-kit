---@meta _
-- Generated API for game version 0.10.0

---@class RenderSceneData : Object
local RenderSceneData = {}

---@return Transform3D
function RenderSceneData.get_cam_transform() end

---@return Projection
function RenderSceneData.get_cam_projection() end

---@return integer
function RenderSceneData.get_view_count() end

---@param view integer
---@return Vector3
function RenderSceneData.get_view_eye_offset(view) end

---@param view integer
---@return Projection
function RenderSceneData.get_view_projection(view) end

---@return RID
function RenderSceneData.get_uniform_buffer() end

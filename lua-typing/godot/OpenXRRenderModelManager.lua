---@meta _
-- Generated API for game version 0.10.0

---@class OpenXRRenderModelManager : Node3D
---@field tracker integer
---@field make_local_to_pose string
local OpenXRRenderModelManager = {}

---@return OpenXRRenderModelManager.RenderModelTracker
function OpenXRRenderModelManager.get_tracker() end

---@param tracker OpenXRRenderModelManager.RenderModelTracker
function OpenXRRenderModelManager.set_tracker(tracker) end

---@return string
function OpenXRRenderModelManager.get_make_local_to_pose() end

---@param make_local_to_pose string
function OpenXRRenderModelManager.set_make_local_to_pose(make_local_to_pose) end

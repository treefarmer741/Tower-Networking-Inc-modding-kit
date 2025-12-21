---@meta _
-- Generated API for game version 0.9.1

---@class OpenXRRenderModelExtension : OpenXRExtensionWrapper
local OpenXRRenderModelExtension = {}

---@return boolean
function OpenXRRenderModelExtension.is_active() end

---@param render_model_id integer
---@return RID
function OpenXRRenderModelExtension.render_model_create(render_model_id) end

---@param render_model RID
function OpenXRRenderModelExtension.render_model_destroy(render_model) end

---@return Array<RID>
function OpenXRRenderModelExtension.render_model_get_all() end

---@param render_model RID
---@return Node3D
function OpenXRRenderModelExtension.render_model_new_scene_instance(render_model) end

---@param render_model RID
---@return PackedStringArray
function OpenXRRenderModelExtension.render_model_get_subaction_paths(render_model) end

---@param render_model RID
---@return string
function OpenXRRenderModelExtension.render_model_get_top_level_path(render_model) end

---@param render_model RID
---@return XRPose.TrackingConfidence
function OpenXRRenderModelExtension.render_model_get_confidence(render_model) end

---@param render_model RID
---@return Transform3D
function OpenXRRenderModelExtension.render_model_get_root_transform(render_model) end

---@param render_model RID
---@return integer
function OpenXRRenderModelExtension.render_model_get_animatable_node_count(render_model) end

---@param render_model RID
---@param index integer
---@return string
function OpenXRRenderModelExtension.render_model_get_animatable_node_name(render_model, index) end

---@param render_model RID
---@param index integer
---@return boolean
function OpenXRRenderModelExtension.render_model_is_animatable_node_visible(render_model, index) end

---@param render_model RID
---@param index integer
---@return Transform3D
function OpenXRRenderModelExtension.render_model_get_animatable_node_transform(render_model, index) end

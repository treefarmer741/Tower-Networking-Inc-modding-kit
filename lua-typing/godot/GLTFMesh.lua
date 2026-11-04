---@meta _
-- Generated API for game version 0.10.0

---@class GLTFMesh : Resource
---@field original_name string
---@field mesh Object
---@field blend_weights PackedFloat32Array
---@field instance_materials Array<any>
local GLTFMesh = {}

---@return string
function GLTFMesh.get_original_name() end

---@param original_name string
function GLTFMesh.set_original_name(original_name) end

---@return ImporterMesh
function GLTFMesh.get_mesh() end

---@param mesh ImporterMesh
function GLTFMesh.set_mesh(mesh) end

---@return PackedFloat32Array
function GLTFMesh.get_blend_weights() end

---@param blend_weights PackedFloat32Array
function GLTFMesh.set_blend_weights(blend_weights) end

---@return Array<Material>
function GLTFMesh.get_instance_materials() end

---@param instance_materials Array<Material>
function GLTFMesh.set_instance_materials(instance_materials) end

---@param extension_name string
---@return Object
function GLTFMesh.get_additional_data(extension_name) end

---@param extension_name string
---@param additional_data Object
function GLTFMesh.set_additional_data(extension_name, additional_data) end

---@meta _
-- Generated API for game version 0.10.0

---@class GLTFDocument : Resource
---@field image_format string
---@field lossy_quality number
---@field fallback_image_format string
---@field fallback_image_quality number
---@field root_node_mode integer
---@field visibility_mode integer
local GLTFDocument = {}

---@param image_format string
function GLTFDocument.set_image_format(image_format) end

---@return string
function GLTFDocument.get_image_format() end

---@param lossy_quality number
function GLTFDocument.set_lossy_quality(lossy_quality) end

---@return number
function GLTFDocument.get_lossy_quality() end

---@param fallback_image_format string
function GLTFDocument.set_fallback_image_format(fallback_image_format) end

---@return string
function GLTFDocument.get_fallback_image_format() end

---@param fallback_image_quality number
function GLTFDocument.set_fallback_image_quality(fallback_image_quality) end

---@return number
function GLTFDocument.get_fallback_image_quality() end

---@param root_node_mode GLTFDocument.RootNodeMode
function GLTFDocument.set_root_node_mode(root_node_mode) end

---@return GLTFDocument.RootNodeMode
function GLTFDocument.get_root_node_mode() end

---@param visibility_mode GLTFDocument.VisibilityMode
function GLTFDocument.set_visibility_mode(visibility_mode) end

---@return GLTFDocument.VisibilityMode
function GLTFDocument.get_visibility_mode() end

---@param path string
---@param state GLTFState
---@param flags integer?  # Default = 0
---@param base_path string?  # Default = 
---@return Error
function GLTFDocument.append_from_file(path, state, flags, base_path) end

---@param bytes PackedByteArray
---@param base_path string
---@param state GLTFState
---@param flags integer?  # Default = 0
---@return Error
function GLTFDocument.append_from_buffer(bytes, base_path, state, flags) end

---@param node Node
---@param state GLTFState
---@param flags integer?  # Default = 0
---@return Error
function GLTFDocument.append_from_scene(node, state, flags) end

---@param state GLTFState
---@param bake_fps number?  # Default = 30
---@param trimming boolean?  # Default = false
---@param remove_immutable_tracks boolean?  # Default = true
---@return Node
function GLTFDocument.generate_scene(state, bake_fps, trimming, remove_immutable_tracks) end

---@param state GLTFState
---@return PackedByteArray
function GLTFDocument.generate_buffer(state) end

---@param state GLTFState
---@param path string
---@return Error
function GLTFDocument.write_to_filesystem(state, path) end

---@param state GLTFState
---@param json_pointer string
---@return GLTFObjectModelProperty
function GLTFDocument.import_object_model_property(state, json_pointer) end

---@param state GLTFState
---@param node_path string
---@param godot_node Node
---@param gltf_node_index integer
---@return GLTFObjectModelProperty
function GLTFDocument.export_object_model_property(state, node_path, godot_node, gltf_node_index) end

---@param extension GLTFDocumentExtension
---@param first_priority boolean?  # Default = false
function GLTFDocument.register_gltf_document_extension(extension, first_priority) end

---@param extension GLTFDocumentExtension
function GLTFDocument.unregister_gltf_document_extension(extension) end

---@return PackedStringArray
function GLTFDocument.get_supported_gltf_extensions() end

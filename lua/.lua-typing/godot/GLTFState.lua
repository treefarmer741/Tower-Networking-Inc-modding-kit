---@meta _
-- Generated API for game version 0.9.1

---@class GLTFState : Resource
---@field json table<any,any>
---@field major_version integer
---@field minor_version integer
---@field copyright string
---@field glb_data PackedByteArray
---@field use_named_skin_binds boolean
---@field nodes Array<any>
---@field buffers Array<any>
---@field buffer_views Array<any>
---@field accessors Array<any>
---@field meshes Array<any>
---@field materials Array<any>
---@field scene_name string
---@field base_path string
---@field filename string
---@field root_nodes PackedInt32Array
---@field textures Array<any>
---@field texture_samplers Array<any>
---@field images Array<any>
---@field skins Array<any>
---@field cameras Array<any>
---@field lights Array<any>
---@field unique_names Array<any>
---@field unique_animation_names Array<any>
---@field skeletons Array<any>
---@field create_animations boolean
---@field import_as_skeleton_bones boolean
---@field animations Array<any>
---@field handle_binary_image integer
---@field bake_fps number
local GLTFState = {}

---@param extension_name string
---@param required boolean
function GLTFState.add_used_extension(extension_name, required) end

---@param data PackedByteArray
---@param deduplication boolean
---@return integer
function GLTFState.append_data_to_buffers(data, deduplication) end

---@param gltf_node GLTFNode
---@param godot_scene_node Node
---@param parent_node_index integer
---@return integer
function GLTFState.append_gltf_node(gltf_node, godot_scene_node, parent_node_index) end

---@return table<any,any>
function GLTFState.get_json() end

---@param json table<any,any>
function GLTFState.set_json(json) end

---@return integer
function GLTFState.get_major_version() end

---@param major_version integer
function GLTFState.set_major_version(major_version) end

---@return integer
function GLTFState.get_minor_version() end

---@param minor_version integer
function GLTFState.set_minor_version(minor_version) end

---@return string
function GLTFState.get_copyright() end

---@param copyright string
function GLTFState.set_copyright(copyright) end

---@return PackedByteArray
function GLTFState.get_glb_data() end

---@param glb_data PackedByteArray
function GLTFState.set_glb_data(glb_data) end

---@return boolean
function GLTFState.get_use_named_skin_binds() end

---@param use_named_skin_binds boolean
function GLTFState.set_use_named_skin_binds(use_named_skin_binds) end

---@return Array<GLTFNode>
function GLTFState.get_nodes() end

---@param nodes Array<GLTFNode>
function GLTFState.set_nodes(nodes) end

---@return Array<PackedByteArray>
function GLTFState.get_buffers() end

---@param buffers Array<PackedByteArray>
function GLTFState.set_buffers(buffers) end

---@return Array<GLTFBufferView>
function GLTFState.get_buffer_views() end

---@param buffer_views Array<GLTFBufferView>
function GLTFState.set_buffer_views(buffer_views) end

---@return Array<GLTFAccessor>
function GLTFState.get_accessors() end

---@param accessors Array<GLTFAccessor>
function GLTFState.set_accessors(accessors) end

---@return Array<GLTFMesh>
function GLTFState.get_meshes() end

---@param meshes Array<GLTFMesh>
function GLTFState.set_meshes(meshes) end

---@param idx integer
---@return integer
function GLTFState.get_animation_players_count(idx) end

---@param idx integer
---@return AnimationPlayer
function GLTFState.get_animation_player(idx) end

---@return Array<Material>
function GLTFState.get_materials() end

---@param materials Array<Material>
function GLTFState.set_materials(materials) end

---@return string
function GLTFState.get_scene_name() end

---@param scene_name string
function GLTFState.set_scene_name(scene_name) end

---@return string
function GLTFState.get_base_path() end

---@param base_path string
function GLTFState.set_base_path(base_path) end

---@return string
function GLTFState.get_filename() end

---@param filename string
function GLTFState.set_filename(filename) end

---@return PackedInt32Array
function GLTFState.get_root_nodes() end

---@param root_nodes PackedInt32Array
function GLTFState.set_root_nodes(root_nodes) end

---@return Array<GLTFTexture>
function GLTFState.get_textures() end

---@param textures Array<GLTFTexture>
function GLTFState.set_textures(textures) end

---@return Array<GLTFTextureSampler>
function GLTFState.get_texture_samplers() end

---@param texture_samplers Array<GLTFTextureSampler>
function GLTFState.set_texture_samplers(texture_samplers) end

---@return Array<Texture2D>
function GLTFState.get_images() end

---@param images Array<Texture2D>
function GLTFState.set_images(images) end

---@return Array<GLTFSkin>
function GLTFState.get_skins() end

---@param skins Array<GLTFSkin>
function GLTFState.set_skins(skins) end

---@return Array<GLTFCamera>
function GLTFState.get_cameras() end

---@param cameras Array<GLTFCamera>
function GLTFState.set_cameras(cameras) end

---@return Array<GLTFLight>
function GLTFState.get_lights() end

---@param lights Array<GLTFLight>
function GLTFState.set_lights(lights) end

---@return Array<string>
function GLTFState.get_unique_names() end

---@param unique_names Array<string>
function GLTFState.set_unique_names(unique_names) end

---@return Array<string>
function GLTFState.get_unique_animation_names() end

---@param unique_animation_names Array<string>
function GLTFState.set_unique_animation_names(unique_animation_names) end

---@return Array<GLTFSkeleton>
function GLTFState.get_skeletons() end

---@param skeletons Array<GLTFSkeleton>
function GLTFState.set_skeletons(skeletons) end

---@return boolean
function GLTFState.get_create_animations() end

---@param create_animations boolean
function GLTFState.set_create_animations(create_animations) end

---@return boolean
function GLTFState.get_import_as_skeleton_bones() end

---@param import_as_skeleton_bones boolean
function GLTFState.set_import_as_skeleton_bones(import_as_skeleton_bones) end

---@return Array<GLTFAnimation>
function GLTFState.get_animations() end

---@param animations Array<GLTFAnimation>
function GLTFState.set_animations(animations) end

---@param idx integer
---@return Node
function GLTFState.get_scene_node(idx) end

---@param scene_node Node
---@return integer
function GLTFState.get_node_index(scene_node) end

---@param extension_name string
---@return Object
function GLTFState.get_additional_data(extension_name) end

---@param extension_name string
---@param additional_data Object
function GLTFState.set_additional_data(extension_name, additional_data) end

---@return integer
function GLTFState.get_handle_binary_image() end

---@param method integer
function GLTFState.set_handle_binary_image(method) end

---@param value number
function GLTFState.set_bake_fps(value) end

---@return number
function GLTFState.get_bake_fps() end

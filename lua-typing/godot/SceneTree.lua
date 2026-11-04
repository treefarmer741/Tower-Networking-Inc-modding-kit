---@meta _
-- Generated API for game version 0.10.0

---@class SceneTree : MainLoop
---@field auto_accept_quit boolean
---@field quit_on_go_back boolean
---@field debug_collisions_hint boolean
---@field debug_paths_hint boolean
---@field debug_navigation_hint boolean
---@field paused boolean
---@field edited_scene_root Node
---@field current_scene Node
---@field root Node
---@field multiplayer_poll boolean
---@field physics_interpolation boolean
local SceneTree = {}

---@return Window
function SceneTree.get_root() end

---@param name string
---@return boolean
function SceneTree.has_group(name) end

---@return boolean
function SceneTree.is_accessibility_enabled() end

---@return boolean
function SceneTree.is_accessibility_supported() end

---@return boolean
function SceneTree.is_auto_accept_quit() end

---@param enabled boolean
function SceneTree.set_auto_accept_quit(enabled) end

---@return boolean
function SceneTree.is_quit_on_go_back() end

---@param enabled boolean
function SceneTree.set_quit_on_go_back(enabled) end

---@param enable boolean
function SceneTree.set_debug_collisions_hint(enable) end

---@return boolean
function SceneTree.is_debugging_collisions_hint() end

---@param enable boolean
function SceneTree.set_debug_paths_hint(enable) end

---@return boolean
function SceneTree.is_debugging_paths_hint() end

---@param enable boolean
function SceneTree.set_debug_navigation_hint(enable) end

---@return boolean
function SceneTree.is_debugging_navigation_hint() end

---@param scene Node
function SceneTree.set_edited_scene_root(scene) end

---@return Node
function SceneTree.get_edited_scene_root() end

---@param enable boolean
function SceneTree.set_pause(enable) end

---@return boolean
function SceneTree.is_paused() end

---@param time_sec number
---@param process_always boolean?  # Default = true
---@param process_in_physics boolean?  # Default = false
---@param ignore_time_scale boolean?  # Default = false
---@return SceneTreeTimer
function SceneTree.create_timer(time_sec, process_always, process_in_physics, ignore_time_scale) end

---@return Tween
function SceneTree.create_tween() end

---@return Array<Tween>
function SceneTree.get_processed_tweens() end

---@return integer
function SceneTree.get_node_count() end

---@return integer
function SceneTree.get_frame() end

---@param exit_code integer?  # Default = 0
function SceneTree.quit(exit_code) end

---@param enabled boolean
function SceneTree.set_physics_interpolation_enabled(enabled) end

---@return boolean
function SceneTree.is_physics_interpolation_enabled() end

---@param obj Object
function SceneTree.queue_delete(obj) end

---@param flags integer
---@param group string
---@param method string
function SceneTree.call_group_flags(flags, group, method) end

---@param call_flags integer
---@param group string
---@param notification integer
function SceneTree.notify_group_flags(call_flags, group, notification) end

---@param call_flags integer
---@param group string
---@param property string
---@param value Object
function SceneTree.set_group_flags(call_flags, group, property, value) end

---@param group string
---@param method string
function SceneTree.call_group(group, method) end

---@param group string
---@param notification integer
function SceneTree.notify_group(group, notification) end

---@param group string
---@param property string
---@param value Object
function SceneTree.set_group(group, property, value) end

---@param group string
---@return Array<Node>
function SceneTree.get_nodes_in_group(group) end

---@param group string
---@return Node
function SceneTree.get_first_node_in_group(group) end

---@param group string
---@return integer
function SceneTree.get_node_count_in_group(group) end

---@param child_node Node
function SceneTree.set_current_scene(child_node) end

---@return Node
function SceneTree.get_current_scene() end

---@param path string
---@return Error
function SceneTree.change_scene_to_file(path) end

---@param packed_scene PackedScene
---@return Error
function SceneTree.change_scene_to_packed(packed_scene) end

---@return Error
function SceneTree.reload_current_scene() end

function SceneTree.unload_current_scene() end

---@param multiplayer MultiplayerAPI
---@param root_path string?  # Default = 
function SceneTree.set_multiplayer(multiplayer, root_path) end

---@param for_path string?  # Default = 
---@return MultiplayerAPI
function SceneTree.get_multiplayer(for_path) end

---@param enabled boolean
function SceneTree.set_multiplayer_poll_enabled(enabled) end

---@return boolean
function SceneTree.is_multiplayer_poll_enabled() end

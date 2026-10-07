---@meta _
-- Generated API for game version 0.10.0

---@class Node : Object
---@field name string
---@field unique_name_in_owner boolean
---@field scene_file_path string
---@field owner Node
---@field multiplayer MultiplayerAPI
---@field process_mode integer
---@field process_priority integer
---@field process_physics_priority integer
---@field process_thread_group integer
---@field process_thread_group_order integer
---@field process_thread_messages integer
---@field physics_interpolation_mode integer
---@field auto_translate_mode integer
---@field editor_description string
local Node = {}

function Node.print_orphan_nodes() end

---@return Array<integer>
function Node.get_orphan_node_ids() end

---@param sibling Node
---@param force_readable_name boolean?  # Default = false
function Node.add_sibling(sibling, force_readable_name) end

---@param name string
function Node.set_name(name) end

---@return string
function Node.get_name() end

---@param node Node
---@param force_readable_name boolean?  # Default = false
---@param internal Node.InternalMode?  # Default = 0
function Node.add_child(node, force_readable_name, internal) end

---@param node Node
function Node.remove_child(node) end

---@param new_parent Node
---@param keep_global_transform boolean?  # Default = true
function Node.reparent(new_parent, keep_global_transform) end

---@param include_internal boolean?  # Default = false
---@return integer
function Node.get_child_count(include_internal) end

---@param include_internal boolean?  # Default = false
---@return Array<Node>
function Node.get_children(include_internal) end

---@param idx integer
---@param include_internal boolean?  # Default = false
---@return Node
function Node.get_child(idx, include_internal) end

---@param path string
---@return boolean
function Node.has_node(path) end

---@param path string
---@return Node
function Node.get_node(path) end

---@param path string
---@return Node
function Node.get_node_or_null(path) end

---@return Node
function Node.get_parent() end

---@param pattern string
---@param recursive boolean?  # Default = true
---@param owned boolean?  # Default = true
---@return Node
function Node.find_child(pattern, recursive, owned) end

---@param pattern string
---@param type string?  # Default = 
---@param recursive boolean?  # Default = true
---@param owned boolean?  # Default = true
---@return Array<Node>
function Node.find_children(pattern, type, recursive, owned) end

---@param pattern string
---@return Node
function Node.find_parent(pattern) end

---@param path string
---@return boolean
function Node.has_node_and_resource(path) end

---@param path string
---@return Array<any>
function Node.get_node_and_resource(path) end

---@return boolean
function Node.is_inside_tree() end

---@return boolean
function Node.is_part_of_edited_scene() end

---@param node Node
---@return boolean
function Node.is_ancestor_of(node) end

---@param node Node
---@return boolean
function Node.is_greater_than(node) end

---@return string
function Node.get_path() end

---@param node Node
---@param use_unique_path boolean?  # Default = false
---@return string
function Node.get_path_to(node, use_unique_path) end

---@param group string
---@param persistent boolean?  # Default = false
function Node.add_to_group(group, persistent) end

---@param group string
function Node.remove_from_group(group) end

---@param group string
---@return boolean
function Node.is_in_group(group) end

---@param child_node Node
---@param to_index integer
function Node.move_child(child_node, to_index) end

---@return Array<StringName>
function Node.get_groups() end

---@param owner Node
function Node.set_owner(owner) end

---@return Node
function Node.get_owner() end

---@param include_internal boolean?  # Default = false
---@return integer
function Node.get_index(include_internal) end

function Node.print_tree() end

function Node.print_tree_pretty() end

---@return string
function Node.get_tree_string() end

---@return string
function Node.get_tree_string_pretty() end

---@param scene_file_path string
function Node.set_scene_file_path(scene_file_path) end

---@return string
function Node.get_scene_file_path() end

---@param what integer
function Node.propagate_notification(what) end

---@param method string
---@param args Array<any>?  # Default = []
---@param parent_first boolean?  # Default = false
function Node.propagate_call(method, args, parent_first) end

---@param enable boolean
function Node.set_physics_process(enable) end

---@return number
function Node.get_physics_process_delta_time() end

---@return boolean
function Node.is_physics_processing() end

---@return number
function Node.get_process_delta_time() end

---@param enable boolean
function Node.set_process(enable) end

---@param priority integer
function Node.set_process_priority(priority) end

---@return integer
function Node.get_process_priority() end

---@param priority integer
function Node.set_physics_process_priority(priority) end

---@return integer
function Node.get_physics_process_priority() end

---@return boolean
function Node.is_processing() end

---@param enable boolean
function Node.set_process_input(enable) end

---@return boolean
function Node.is_processing_input() end

---@param enable boolean
function Node.set_process_shortcut_input(enable) end

---@return boolean
function Node.is_processing_shortcut_input() end

---@param enable boolean
function Node.set_process_unhandled_input(enable) end

---@return boolean
function Node.is_processing_unhandled_input() end

---@param enable boolean
function Node.set_process_unhandled_key_input(enable) end

---@return boolean
function Node.is_processing_unhandled_key_input() end

---@param mode Node.ProcessMode
function Node.set_process_mode(mode) end

---@return Node.ProcessMode
function Node.get_process_mode() end

---@return boolean
function Node.can_process() end

---@param mode Node.ProcessThreadGroup
function Node.set_process_thread_group(mode) end

---@return Node.ProcessThreadGroup
function Node.get_process_thread_group() end

---@param flags Node.ProcessThreadMessages
function Node.set_process_thread_messages(flags) end

---@return Node.ProcessThreadMessages
function Node.get_process_thread_messages() end

---@param order integer
function Node.set_process_thread_group_order(order) end

---@return integer
function Node.get_process_thread_group_order() end

function Node.queue_accessibility_update() end

---@return RID
function Node.get_accessibility_element() end

---@param fold boolean
function Node.set_display_folded(fold) end

---@return boolean
function Node.is_displayed_folded() end

---@param enable boolean
function Node.set_process_internal(enable) end

---@return boolean
function Node.is_processing_internal() end

---@param enable boolean
function Node.set_physics_process_internal(enable) end

---@return boolean
function Node.is_physics_processing_internal() end

---@param mode Node.PhysicsInterpolationMode
function Node.set_physics_interpolation_mode(mode) end

---@return Node.PhysicsInterpolationMode
function Node.get_physics_interpolation_mode() end

---@return boolean
function Node.is_physics_interpolated() end

---@return boolean
function Node.is_physics_interpolated_and_enabled() end

function Node.reset_physics_interpolation() end

---@param mode Node.AutoTranslateMode
function Node.set_auto_translate_mode(mode) end

---@return Node.AutoTranslateMode
function Node.get_auto_translate_mode() end

---@return boolean
function Node.can_auto_translate() end

function Node.set_translation_domain_inherited() end

---@return Window
function Node.get_window() end

---@return Window
function Node.get_last_exclusive_window() end

---@return SceneTree
function Node.get_tree() end

---@return Tween
function Node.create_tween() end

---@param flags integer?  # Default = 15
---@return Node
function Node.duplicate(flags) end

---@param node Node
---@param keep_groups boolean?  # Default = false
function Node.replace_by(node, keep_groups) end

---@param load_placeholder boolean
function Node.set_scene_instance_load_placeholder(load_placeholder) end

---@return boolean
function Node.get_scene_instance_load_placeholder() end

---@param node Node
---@param is_editable boolean
function Node.set_editable_instance(node, is_editable) end

---@param node Node
---@return boolean
function Node.is_editable_instance(node) end

---@return Viewport
function Node.get_viewport() end

function Node.queue_free() end

function Node.request_ready() end

---@return boolean
function Node.is_node_ready() end

---@param id integer
---@param recursive boolean?  # Default = true
function Node.set_multiplayer_authority(id, recursive) end

---@return integer
function Node.get_multiplayer_authority() end

---@return boolean
function Node.is_multiplayer_authority() end

---@return MultiplayerAPI
function Node.get_multiplayer() end

---@param method string
---@param config Object
function Node.rpc_config(method, config) end

---@return Object
function Node.get_node_rpc_config() end

---@param editor_description string
function Node.set_editor_description(editor_description) end

---@return string
function Node.get_editor_description() end

---@param enable boolean
function Node.set_unique_name_in_owner(enable) end

---@return boolean
function Node.is_unique_name_in_owner() end

---@param message string
---@param context string?  # Default = 
---@return string
function Node.atr(message, context) end

---@param message string
---@param plural_message string
---@param n integer
---@param context string?  # Default = 
---@return string
function Node.atr_n(message, plural_message, n, context) end

---@param method string
---@return Error
function Node.rpc(method) end

---@param peer_id integer
---@param method string
---@return Error
function Node.rpc_id(peer_id, method) end

function Node.update_configuration_warnings() end

---@param method string
---@return Object
function Node.call_deferred_thread_group(method) end

---@param property string
---@param value Object
function Node.set_deferred_thread_group(property, value) end

---@param what integer
function Node.notify_deferred_thread_group(what) end

---@param method string
---@return Object
function Node.call_thread_safe(method) end

---@param property string
---@param value Object
function Node.set_thread_safe(property, value) end

---@param what integer
function Node.notify_thread_safe(what) end

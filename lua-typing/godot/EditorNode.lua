---@meta _
-- Generated API for game version 0.12.1

---@class EditorNode : Node
local EditorNode = {}

---@param object Object
---@param property string?  # Default = 
---@param inspector_only boolean?  # Default = false
function EditorNode.push_item(object, property, inspector_only) end

---@param _unnamed_arg0 Node
function EditorNode.set_edited_scene(_unnamed_arg0) end

---@param _unnamed_arg0 integer
function EditorNode.stop_child_process(_unnamed_arg0) end

---@param value Object
---@param node Node
---@param remove boolean?  # Default = false
function EditorNode.update_node_reference(value, node, remove) end

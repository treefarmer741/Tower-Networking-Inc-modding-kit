---@meta _
-- Generated API for game version 0.10.0

---@class ScriptEditorDebugger : MarginContainer
local ScriptEditorDebugger = {}

---@param _unnamed_arg0 string
---@param _unnamed_arg1 string
---@param _unnamed_arg2 string
function ScriptEditorDebugger.live_debug_create_node(_unnamed_arg0, _unnamed_arg1, _unnamed_arg2) end

---@param _unnamed_arg0 string
---@param _unnamed_arg1 string
---@param _unnamed_arg2 string
function ScriptEditorDebugger.live_debug_instantiate_node(_unnamed_arg0, _unnamed_arg1, _unnamed_arg2) end

---@param _unnamed_arg0 string
function ScriptEditorDebugger.live_debug_remove_node(_unnamed_arg0) end

---@param _unnamed_arg0 string
---@param _unnamed_arg1 integer
function ScriptEditorDebugger.live_debug_remove_and_keep_node(_unnamed_arg0, _unnamed_arg1) end

---@param _unnamed_arg0 integer
---@param _unnamed_arg1 string
---@param _unnamed_arg2 integer
function ScriptEditorDebugger.live_debug_restore_node(_unnamed_arg0, _unnamed_arg1, _unnamed_arg2) end

---@param _unnamed_arg0 string
---@param _unnamed_arg1 string
function ScriptEditorDebugger.live_debug_duplicate_node(_unnamed_arg0, _unnamed_arg1) end

---@param _unnamed_arg0 string
---@param _unnamed_arg1 string
---@param _unnamed_arg2 string
---@param _unnamed_arg3 integer
function ScriptEditorDebugger.live_debug_reparent_node(_unnamed_arg0, _unnamed_arg1, _unnamed_arg2, _unnamed_arg3) end

---@param id integer
---@param property string
---@param value Object
---@param field string
function ScriptEditorDebugger.update_remote_object(id, property, value, field) end

---@meta _
-- Generated API for game version 0.10.0

---@class UndoRedo : Object
---@field max_steps integer
local UndoRedo = {}

---@param name string
---@param merge_mode UndoRedo.MergeMode?  # Default = 0
---@param backward_undo_ops boolean?  # Default = false
function UndoRedo.create_action(name, merge_mode, backward_undo_ops) end

---@param execute boolean?  # Default = true
function UndoRedo.commit_action(execute) end

---@return boolean
function UndoRedo.is_committing_action() end

---@param callable (Callable|function)
function UndoRedo.add_do_method(callable) end

---@param callable (Callable|function)
function UndoRedo.add_undo_method(callable) end

---@param object Object
---@param property string
---@param value Object
function UndoRedo.add_do_property(object, property, value) end

---@param object Object
---@param property string
---@param value Object
function UndoRedo.add_undo_property(object, property, value) end

---@param object Object
function UndoRedo.add_do_reference(object) end

---@param object Object
function UndoRedo.add_undo_reference(object) end

function UndoRedo.start_force_keep_in_merge_ends() end

function UndoRedo.end_force_keep_in_merge_ends() end

---@return integer
function UndoRedo.get_history_count() end

---@return integer
function UndoRedo.get_current_action() end

---@param id integer
---@return string
function UndoRedo.get_action_name(id) end

---@param increase_version boolean?  # Default = true
function UndoRedo.clear_history(increase_version) end

---@return string
function UndoRedo.get_current_action_name() end

---@return boolean
function UndoRedo.has_undo() end

---@return boolean
function UndoRedo.has_redo() end

---@return integer
function UndoRedo.get_version() end

---@param max_steps integer
function UndoRedo.set_max_steps(max_steps) end

---@return integer
function UndoRedo.get_max_steps() end

---@return boolean
function UndoRedo.redo() end

---@return boolean
function UndoRedo.undo() end

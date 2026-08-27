---@meta _
-- Generated API for game version 0.12.1

---@class ModEditorJsonSpecs : Object
local ModEditorJsonSpecs = {}

---@param node Node
---@return RefCounted
function ModEditorJsonSpecs.get_spec_from_node(node) end

---@param spec_name string
---@return RefCounted
function ModEditorJsonSpecs.get_spec_from_spec_name(spec_name) end

---@param data table<any,any>
---@return RefCounted
function ModEditorJsonSpecs.get_spec_from_dict(data) end

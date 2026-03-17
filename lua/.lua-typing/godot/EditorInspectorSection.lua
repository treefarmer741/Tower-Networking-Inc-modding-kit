---@meta _
-- Generated API for game version 0.10.0

---@class EditorInspectorSection : Container
local EditorInspectorSection = {}

---@param section string
---@param label string
---@param object Object
---@param bg_color Color
---@param foldable boolean
---@param indent_depth integer?  # Default = 0
---@param level integer?  # Default = 1
function EditorInspectorSection.setup(section, label, object, bg_color, foldable, indent_depth, level) end

---@return VBoxContainer
function EditorInspectorSection.get_vbox() end

function EditorInspectorSection.unfold() end

function EditorInspectorSection.fold() end

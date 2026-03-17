---@meta _
-- Generated API for game version 0.10.0

---@class StickyNote : Area2D
---@field note Label
---@field sprite Sprite2D
---@field tear_sfx AudioStreamPlayer2D
---@field content string
---@field note_color StickyNote.StickyColor
---@field height_offset number
local StickyNote = {}
---@enum StickyNote.StickyColor
StickyNote.StickyColor = {
	["YELLOW"] = 0,
	["RED"] = 1,
	["GREEN"] = 2,
	["BLUE"] = 3,
	["PURPLE"] = 4,
}

---@return table<any,any>
function StickyNote.get_color_map() end

---@return Object
function StickyNote.clone() end

---@param destroy boolean?  # Default = false
function StickyNote.tear(destroy) end

---@param c string
---@param nc StickyNote.StickyColor
function StickyNote.update_note(c, nc) end

function StickyNote.disable_collision() end

function StickyNote.enable_collision() end

---@param global_mouse_pos Vector2
function StickyNote.stick_to_pos(global_mouse_pos) end

---@meta _
-- Generated API for game version 0.12.1

---@class StickyNote : Area2D
---@field FONT_DATA Array<any> # Constant value: [{ "path": "res://assets/texts/fonts/PatrickHand-Regular.ttf", "size": 26, "max_width": 99, "name": "Patrick Hand" }, { "path": "res://assets/texts/monospace_fonts/JetBrainsMono-Regular.ttf", "size": 18, "max_width": 90, "name": "JetBrains Mono" }, { "path": "res://assets/texts/fonts/ComicRelief-Regular.ttf", "size": 18, "max_width": 90, "name": "Comic Relief" }]
---@field note Label
---@field bg ColorRect
---@field tear_sfx AudioStreamPlayer2D
---@field content string
---@field note_color Color
---@field font_index integer
---@field height_offset number
local StickyNote = {}

---@return Object
function StickyNote.clone() end

---@param destroy boolean?  # Default = false
function StickyNote.tear(destroy) end

---@param c string
---@param nc Color
---@param fi integer?  # Default = 0
function StickyNote.update_note(c, nc, fi) end

function StickyNote.disable_collision() end

function StickyNote.enable_collision() end

---@param global_mouse_pos Vector2
function StickyNote.stick_to_pos(global_mouse_pos) end

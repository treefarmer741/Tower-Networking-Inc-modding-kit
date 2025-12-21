---@meta _
-- Generated API for game version 0.9.1

---@class CableSlot : Area2D
---@field coil_radius number
---@field coil_tightness number
---@field coil_gap number
---@field preslotted_delivery_obj Node2D
---@field mute_sound boolean
---@field coiled_cable Object
---@field coil_offsets Array<any>
---@field free_end Plug
---@field coil_points PackedVector2Array
---@field connection Object
---@field opposite_socket Socket
---@field type Socket.Type
---@field insert_sound_np string
---@field remove_sound_np string
---@field disable_egress boolean
---@field disable_ingress boolean
---@field insert_sound AudioStreamPlayer2D
---@field remove_sound AudioStreamPlayer2D
---@field controller GraphController
---@field is_blocked boolean
---@field root_transformer RemoteTransform2D
local CableSlot = {}

---@param _newpos Object
function CableSlot.emove(_newpos) end

function CableSlot.block() end

function CableSlot.unblock() end

---@param plug Plug
---@return Object
function CableSlot.compatible_with(plug) end

---@param msg string
function CableSlot.show_hint(msg) end

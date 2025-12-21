---@meta _
-- Generated API for game version 0.9.1

---@class PeripheralSocket : Area2D
---@field peripheral_lock_switch ToggleSwitch
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
local PeripheralSocket = {}

function PeripheralSocket.block() end

function PeripheralSocket.unblock() end

---@param plug Plug
---@return Object
function PeripheralSocket.compatible_with(plug) end

---@param msg string
function PeripheralSocket.show_hint(msg) end

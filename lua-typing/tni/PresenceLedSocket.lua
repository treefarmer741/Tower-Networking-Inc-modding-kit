---@meta _
-- Generated API for game version 0.13.1

---@class PresenceLedSocket : PeripheralSocket
---@field presence_led PoweredLight
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
local PresenceLedSocket = {}

function PresenceLedSocket.block() end

function PresenceLedSocket.unblock() end

---@param plug Plug
---@return Object
function PresenceLedSocket.compatible_with(plug) end

---@param msg string
function PresenceLedSocket.show_hint(msg) end

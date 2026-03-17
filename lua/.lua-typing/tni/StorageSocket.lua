---@meta _
-- Generated API for game version 0.10.0

---@class StorageSocket : Area2D
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
local StorageSocket = {}

function StorageSocket.block() end

function StorageSocket.unblock() end

---@param plug Plug
---@return Object
function StorageSocket.compatible_with(plug) end

---@param msg string
function StorageSocket.show_hint(msg) end

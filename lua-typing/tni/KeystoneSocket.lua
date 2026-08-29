---@meta _
-- Generated API for game version 0.12.1

---@class KeystoneSocket : Socket
---@field is_punched_down boolean
---@field punchdown_link Object
---@field punchdown_area Area2D
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
local KeystoneSocket = {}

---@param link Object
function KeystoneSocket.punch_down(link) end

function KeystoneSocket.unpunch() end

---@param sock Socket
function KeystoneSocket.set_back_socket(sock) end

function KeystoneSocket.clear_back_socket() end

function KeystoneSocket.block() end

function KeystoneSocket.unblock() end

---@param plug Plug
---@return Object
function KeystoneSocket.compatible_with(plug) end

---@param msg string
function KeystoneSocket.show_hint(msg) end

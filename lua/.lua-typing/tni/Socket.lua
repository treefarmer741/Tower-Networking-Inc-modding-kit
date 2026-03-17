---@meta _
-- Generated API for game version 0.10.0

---@class Socket : Area2D
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
local Socket = {}
---@enum Socket.Type
Socket.Type = {
	["TEST"] = 1,
	["B_3PIN"] = 2,
	["UK_3PIN"] = 3,
	["RJ45"] = 4,
	["RJ11"] = 5,
	["A_USB"] = 6,
	["E10_BULB"] = 7,
	["SERIAL_DEBUG"] = 8,
	["DC_JACK"] = 9,
	["FIBER_OPTIC_SC"] = 10,
	["SATA35_SLOT"] = 101,
	["SATA25_SLOT"] = 102,
	["PCIE_SLOT"] = 103,
	["DDR3_SLOT"] = 110,
	["DDR4_SLOT"] = 111,
	["STORAGE_SLOT"] = 200,
}

function Socket.block() end

function Socket.unblock() end

---@param plug Plug
---@return Object
function Socket.compatible_with(plug) end

---@param msg string
function Socket.show_hint(msg) end

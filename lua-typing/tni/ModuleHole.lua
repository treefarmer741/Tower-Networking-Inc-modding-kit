---@meta _
-- Generated API for game version 0.13.4

---@class ModuleHole : BladeBay
---@field cable_slot CableSlot
---@field power_socket Socket
---@field link_socket LogicControllerSocket
---@field slot_sprite Sprite2D
---@field seated DeviceUnit
---@field compatible_mounting DeviceUnit.MountType
---@field sliding_sfx string
---@field bdr string
---@field hr ColorRect
---@field ext_db_tracker Array<any>
local ModuleHole = {}

function ModuleHole.play_sfx_slide_in() end

---@param du DeviceUnit
---@return Object
function ModuleHole.compatible_with(du) end

---@param dubod DeviceUnit
---@return Object
function ModuleHole.test_containment_and_compat(dubod) end

function ModuleHole.play_sfx_slide_in() end

function ModuleHole.play_sfx_slide_out() end

function ModuleHole.show_hr() end

function ModuleHole.hide_hr() end

---@param du DeviceUnit
---@return Object
function ModuleHole.compatible_with(du) end

---@return Vector2
function ModuleHole.get_valid_y_bounds() end

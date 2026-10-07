---@meta _
-- Generated API for game version 0.13.1

---@class BladeBay : MountingArea
---@field power_socket Socket
---@field link_socket LogicControllerSocket
---@field slot_sprite Sprite2D
---@field seated DeviceUnit
---@field compatible_mounting DeviceUnit.MountType
---@field sliding_sfx string
---@field bdr string
---@field hr ColorRect
---@field ext_db_tracker Array<any>
local BladeBay = {}

---@param du DeviceUnit
---@return Object
function BladeBay.compatible_with(du) end

---@param dubod DeviceUnit
---@return Object
function BladeBay.test_containment_and_compat(dubod) end

function BladeBay.play_sfx_slide_in() end

function BladeBay.play_sfx_slide_out() end

function BladeBay.show_hr() end

function BladeBay.hide_hr() end

---@param du DeviceUnit
---@return Object
function BladeBay.compatible_with(du) end

---@return Vector2
function BladeBay.get_valid_y_bounds() end

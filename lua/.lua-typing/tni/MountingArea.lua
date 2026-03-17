---@meta _
-- Generated API for game version 0.10.0

---@class MountingArea : Area2D
---@field compatible_mounting DeviceUnit.MountType
---@field sliding_sfx string
---@field bdr string
---@field hr ColorRect
---@field ext_db_tracker Array<any>
local MountingArea = {}

---@param dubod DeviceUnit
---@return Object
function MountingArea.test_containment_and_compat(dubod) end

function MountingArea.play_sfx_slide_in() end

function MountingArea.play_sfx_slide_out() end

function MountingArea.show_hr() end

function MountingArea.hide_hr() end

---@param du DeviceUnit
---@return Object
function MountingArea.compatible_with(du) end

---@meta _
-- Generated API for game version 0.13.4

---@class CctvGuardItem : VBoxContainer
---@field cam CctvCameraOutlet
---@field fw CctvFirmware
---@field cam_hw_lbl Label
---@field cam_nw_lbl Label
---@field floor_lbl Label
---@field srv_hw_lbl Label
---@field srv_nw_lbl Label
---@field monitoring_btn Button
---@field clear_btn Button
---@field sep HSeparator
local CctvGuardItem = {}

---@param camera CctvCameraOutlet
---@param firmware CctvFirmware
---@param server table<any,any>
function CctvGuardItem.set_camera(camera, firmware, server) end

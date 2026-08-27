---@meta _
-- Generated API for game version 0.12.1

---@class CctvViewport : PanelContainer
---@field sub_viewport SubViewport
---@field sub_viewport_container SubViewportContainer
---@field cctv_cam Camera2D
---@field cctv_cam_status Label
---@field top_bound number
---@field bottom_bound number
---@field left_bound number
---@field right_bound number
---@field pan_step number
---@field top_limit_margin number
---@field bottom_limit_margin number
---@field zoom_enabled boolean
---@field target_zoom number
---@field MIN_ZOOM number
---@field MAX_ZOOM number
---@field ZOOM_INCREMENT number
local CctvViewport = {}

---@param loc Location
function CctvViewport.go_to_floor(loc) end

---@param device DeviceOutlet
function CctvViewport.set_camera_target(device) end

---@param node Node
---@return Location
function CctvViewport.get_location_for_device(node) end

function CctvViewport.pan_left() end

function CctvViewport.pan_right() end

function CctvViewport.pan_up() end

function CctvViewport.pan_down() end

function CctvViewport.zoom_in() end

function CctvViewport.zoom_out() end

function CctvViewport.launch() end

function CctvViewport.minimize() end

function CctvViewport.clear_connection() end

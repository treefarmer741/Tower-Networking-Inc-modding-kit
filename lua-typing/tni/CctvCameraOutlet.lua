---@meta _
-- Generated API for game version 0.13.4

---@class CctvCameraOutlet : DeviceOutlet
---@field STEALABLE_CLASSES Array<any> # Constant value: [7, 1, 2, 14, 13, 4, 19, 20, 3, 12, 11]
---@field THEFT_TECHS Array<any> # Constant value: ["free_babel_ally", "fbabel_v1"]
---@field DEFAULT_COVER_RECT Rect2 # Constant value: [P: (-1000.0, -2500.0), S: (2000.0, 5000.0)]
---@field cover_rect Rect2
---@field player_installed boolean
---@field online boolean
---@field outlet_name string
---@field logic_controller LogicController
---@field device_hardware_class DeviceUnit.DeviceHardwareClass
---@field socket Socket
---@field sockets Array<Socket>
---@field floor_num integer
local CctvCameraOutlet = {}

function CctvCameraOutlet.remove() end

function CctvCameraOutlet.remove_local() end

---@return Rect2
function CctvCameraOutlet.get_cover_rect() end

---@param pos Vector2
---@param local_rect Rect2
---@param loc Location
---@return Rect2
function CctvCameraOutlet.cover_rect_at(pos, local_rect, loc) end

---@param point Vector2
---@return boolean
function CctvCameraOutlet.covers(point) end

---@param on boolean
function CctvCameraOutlet.show_cover(on) end

---@return boolean
function CctvCameraOutlet.is_theft_active() end

---@param dev Node
---@return boolean
function CctvCameraOutlet.is_stealable(dev) end

---@param dev Node2D
---@return boolean
function CctvCameraOutlet.is_monitored(dev) end

---@return Object
function CctvCameraOutlet.debug_monitor_callback() end

---@meta _
-- Generated API for game version 0.12.1

---@class Cctv : ScreenApp
---@field cctv_viewport Object
---@field cctv_server_option Object
---@field cctv_camera_connection Object
---@field connection_status_label Object
---@field selected_server LogicController
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Cctv = {}

---@param test_func (Callable|function)
---@return Array<any>
function Cctv.find_all_device_outlets(test_func) end

---@param addr string
---@return DeviceOutlet
function Cctv.resolve_address_to_device(addr) end

---@param camera_nw_or_hw_addr string
---@return boolean
function Cctv.is_cctv_able_to_reach_server(camera_nw_or_hw_addr) end

---@return Array<any>
function Cctv.find_monitoring_servers() end

function Cctv.populate_cctv_server_option() end

function Cctv.launch() end

function Cctv.minimize() end

function Cctv.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Cctv.toast(msg, duration) end

---@return Object
function Cctv.get_main_pane() end

function Cctv.minimize() end

function Cctv.launch() end

---@meta _
-- Generated API for game version 0.9.1

---@class Autograph : Container
---@field white256txt Object # Constant value: <CompressedTexture2D#-9223369087369785403>
---@field green256txt Object # Constant value: <CompressedTexture2D#-9223369087000686785>
---@field bw_load_color Array<any> # Constant value: [(1.0, 0.0, 0.0, 1.0), (1.0, 0.6, 0.0, 1.0), (1.0, 1.0, 0.0, 1.0), (0.8, 1.0, 0.2, 1.0), (0.6, 1.0, 0.2, 1.0), (0.4, 1.0, 0.2, 1.0), (0.2, 0.8, 0.2, 1.0), (0.0, 1.0, 0.0, 1.0), (0.0, 1.0, 0.6, 1.0), (0.0, 1.0, 0.8, 1.0), (0.2, 0.8, 0.8, 1.0), (0.0, 0.8, 0.9333, 1.0)]
---@field togcfgbtn Button
---@field cfgpage Container
---@field debugger_il ItemList
---@field nodbglb Label
---@field main_timer Timer
---@field controlbar Container
---@field lastgenindlb Label
---@field manbutton Button
---@field autbutton Button
---@field ndbgpage Container
---@field graphpage Container
---@field gd2 OptionButton
---@field gd1 OptionButton
---@field scnex OptionButton
---@field selected_dbg DeviceUnit
---@field autoscan_state boolean
---@field graph_node_data table<any,any>
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Autograph = {}

function Autograph.launch() end

function Autograph.minimize() end

function Autograph.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Autograph.toast(msg, duration) end

---@return Object
function Autograph.get_main_pane() end

function Autograph.minimize() end

function Autograph.launch() end

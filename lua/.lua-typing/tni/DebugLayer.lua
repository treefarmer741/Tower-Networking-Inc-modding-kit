---@meta _
-- Generated API for game version 0.9.1

---@class DebugLayer : CanvasLayer
---@field livemon_ps string # Constant value: <PackedScene>
---@field MAX_CMD_HISTORY integer # Constant value: 20
---@field main_ctn Container
---@field display_le RichTextLabel
---@field cmd_in TextEdit
---@field lvmon_ctn Container
---@field enabled boolean
---@field ext_cmd table<any,any>
---@field mux_cmd table<any,any>
---@field cmd_hist Array<any>
---@field curr_muxed Control
local DebugLayer = {}

function DebugLayer.clear_all_monitors() end

---@param cmd_name string
---@param cmd_func (Callable|function)
---@param warn_overwrite boolean?  # Default = true
function DebugLayer.register_cmd(cmd_name, cmd_func, warn_overwrite) end

---@param msg string
---@param end_ string?  # Default = 

function DebugLayer.print_console(msg, end_) end

---@param target_obj Object
function DebugLayer.monitor_obj(target_obj) end

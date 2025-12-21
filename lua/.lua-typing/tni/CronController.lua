---@meta _
-- Generated API for game version 0.9.1

---@class CronController : Node
---@field MINUTES_IN_DAY integer # Constant value: 1440
---@field crontabs table<any,any>
---@field cronlogs Array<any>
---@field total_installed_count integer
---@field sorted_keys Array<any>
---@field crona Array<any>
---@field last_trigger_minute integer
---@field curr_minod integer
local CronController = {}

---@param everything boolean?  # Default = true
function CronController.wipe(everything) end

---@param ti integer
function CronController.remove_expr_cmd(ti) end

---@param c_expr string
---@param c_cmd string
function CronController.add_expr_cmd(c_expr, c_cmd) end

function CronController.print_horizontal_sep() end

---@param s Object
function CronController.print_success(s) end

---@param s Object
function CronController.print_error(s) end

---@param s Object
function CronController.print_highlight(s) end

---@param s Object?  # Default = 
function CronController.print_line(s) end

function CronController.rotate_output() end

function CronController.clear_display() end

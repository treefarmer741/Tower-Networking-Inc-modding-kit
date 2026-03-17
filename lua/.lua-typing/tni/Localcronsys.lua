---@meta _
-- Generated API for game version 0.9.1

---@class Localcronsys : Node
---@field MINUTES_IN_DAY integer # Constant value: 1440
---@field crontabs table<any,any>
---@field total_tab_count integer
---@field sorted_keys Array<any>
---@field crona Array<any>
---@field last_trigger_minute integer
---@field curr_minod integer
local Localcronsys = {}

function Localcronsys.clear_tabs() end

---@param ti integer
function Localcronsys.remove_expr_cval(ti) end

---@param c_expr string
---@param c_val string
function Localcronsys.add_expr_cval(c_expr, c_val) end

---@param day_float number
function Localcronsys.sample_day_float(day_float) end

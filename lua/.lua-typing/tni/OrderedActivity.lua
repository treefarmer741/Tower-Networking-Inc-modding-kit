---@meta _
-- Generated API for game version 0.10.0

---@class OrderedActivity : Node
local OrderedActivity = {}
---@enum OrderedActivity.Todo
OrderedActivity.Todo = {
	["NOT_INITIALIZED"] = -1,
	["BREAK_AND_EXECUTE"] = 0,
	["CONTINUE_ADD"] = 1,
}

---@return string
function OrderedActivity.get_current_order_guide_text() end

---@param cinfo table<any,any>
---@param aux_v string
function OrderedActivity.add_order_context(cinfo, aux_v) end

function OrderedActivity.test_progress() end

function OrderedActivity.handle_activity() end

function OrderedActivity.stop_activity() end

function OrderedActivity.tick() end

---@return string
function OrderedActivity.get_order_status() end

function OrderedActivity.get_activity_display_name() end

---@return string
function OrderedActivity.get_activity_description() end

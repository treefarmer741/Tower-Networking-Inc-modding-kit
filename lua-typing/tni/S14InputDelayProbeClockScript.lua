---@meta _
-- Generated API for game version 0.13.4

---@class S14InputDelayProbeClockScript : Node
---@field PMIN integer # Constant value: -2147483648
---@field PMAX integer # Constant value: 2147483647
---@field Hook Object # Constant value: ():<GDScript#-9223366169459580682>
---@field recording boolean
---@field frame_us PackedInt64Array
---@field proc_us PackedInt64Array
---@field tail_us PackedInt64Array
---@field ticks PackedInt64Array
---@field phys_us PackedInt64Array
---@field step_us PackedInt64Array
---@field draw_calls PackedInt64Array
local S14InputDelayProbeClockScript = {}

function S14InputDelayProbeClockScript.clear() end

---@param seconds number
---@return table<any,any>
function S14InputDelayProbeClockScript.measure(seconds) end

---@param wall_s number
---@param perf_proc PackedFloat64Array?  # Default = <null>
---@param perf_phys PackedFloat64Array?  # Default = <null>
---@return table<any,any>
function S14InputDelayProbeClockScript.summarize(wall_s, perf_proc, perf_phys) end

---@return Array<any>
function S14InputDelayProbeClockScript.raw_rows() end

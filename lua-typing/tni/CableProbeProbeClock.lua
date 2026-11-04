---@meta _
-- Generated API for game version 0.13.4

---@class CableProbeProbeClock : Node
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
local CableProbeProbeClock = {}

function CableProbeProbeClock.clear() end

---@param seconds number
---@return table<any,any>
function CableProbeProbeClock.measure(seconds) end

---@param wall_s number
---@param perf_proc PackedFloat64Array?  # Default = <null>
---@param perf_phys PackedFloat64Array?  # Default = <null>
---@return table<any,any>
function CableProbeProbeClock.summarize(wall_s, perf_proc, perf_phys) end

---@return Array<any>
function CableProbeProbeClock.raw_rows() end

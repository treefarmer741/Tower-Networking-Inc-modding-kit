---@meta _
-- Generated API for game version 0.9.1

---@class Timer : Node
---@field process_callback integer
---@field wait_time number
---@field one_shot boolean
---@field autostart boolean
---@field paused boolean
---@field ignore_time_scale boolean
---@field time_left number
local Timer = {}

---@param time_sec number
function Timer.set_wait_time(time_sec) end

---@return number
function Timer.get_wait_time() end

---@param enable boolean
function Timer.set_one_shot(enable) end

---@return boolean
function Timer.is_one_shot() end

---@param enable boolean
function Timer.set_autostart(enable) end

---@return boolean
function Timer.has_autostart() end

---@param time_sec number?  # Default = -1
function Timer.start(time_sec) end

function Timer.stop() end

---@param paused boolean
function Timer.set_paused(paused) end

---@return boolean
function Timer.is_paused() end

---@param ignore boolean
function Timer.set_ignore_time_scale(ignore) end

---@return boolean
function Timer.is_ignoring_time_scale() end

---@return boolean
function Timer.is_stopped() end

---@return number
function Timer.get_time_left() end

---@param callback Timer.TimerProcessCallback
function Timer.set_timer_process_callback(callback) end

---@return Timer.TimerProcessCallback
function Timer.get_timer_process_callback() end

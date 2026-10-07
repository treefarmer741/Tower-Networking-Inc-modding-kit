---@meta _
-- Generated API for game version 0.10.0

---@class Tween : RefCounted
local Tween = {}

---@param object Object
---@param property string
---@param final_val Object
---@param duration number
---@return PropertyTweener
function Tween.tween_property(object, property, final_val, duration) end

---@param time number
---@return IntervalTweener
function Tween.tween_interval(time) end

---@param callback (Callable|function)
---@return CallbackTweener
function Tween.tween_callback(callback) end

---@param method (Callable|function)
---@param from Object
---@param to Object
---@param duration number
---@return MethodTweener
function Tween.tween_method(method, from, to, duration) end

---@param subtween Tween
---@return SubtweenTweener
function Tween.tween_subtween(subtween) end

---@param delta number
---@return boolean
function Tween.custom_step(delta) end

function Tween.stop() end

function Tween.pause() end

function Tween.play() end

function Tween.kill() end

---@return number
function Tween.get_total_elapsed_time() end

---@return boolean
function Tween.is_running() end

---@return boolean
function Tween.is_valid() end

---@param node Node
---@return Tween
function Tween.bind_node(node) end

---@param mode Tween.TweenProcessMode
---@return Tween
function Tween.set_process_mode(mode) end

---@param mode Tween.TweenPauseMode
---@return Tween
function Tween.set_pause_mode(mode) end

---@param ignore boolean?  # Default = true
---@return Tween
function Tween.set_ignore_time_scale(ignore) end

---@param parallel boolean?  # Default = true
---@return Tween
function Tween.set_parallel(parallel) end

---@param loops integer?  # Default = 0
---@return Tween
function Tween.set_loops(loops) end

---@return integer
function Tween.get_loops_left() end

---@param speed number
---@return Tween
function Tween.set_speed_scale(speed) end

---@param trans Tween.TransitionType
---@return Tween
function Tween.set_trans(trans) end

---@param ease Tween.EaseType
---@return Tween
function Tween.set_ease(ease) end

---@return Tween
function Tween.parallel() end

---@return Tween
function Tween.chain() end

---@param initial_value Object
---@param delta_value Object
---@param elapsed_time number
---@param duration number
---@param trans_type Tween.TransitionType
---@param ease_type Tween.EaseType
---@return Object
function Tween.interpolate_value(initial_value, delta_value, elapsed_time, duration, trans_type, ease_type) end

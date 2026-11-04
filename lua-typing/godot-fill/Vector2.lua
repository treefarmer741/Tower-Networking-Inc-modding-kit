---@meta _

---@class Vector2
---@field x number
---@field y number
---@field create fun():Vector2
local Vector2 = {}

---@return Vector2
function Vector2:clone() end

---@return Vector2
function Vector2:abs() end

---@return number
function Vector2:angle() end

---@return number
---@param to Vector2
function Vector2:angle_to(to) end

---@return number
---@param to Vector2
function Vector2:angle_to_point(to) end

---@return number
function Vector2:aspect() end

---@param control_1 Vector2
---@param control_2 Vector2
---@param finish Vector2
---@param t number
---@return Vector2
function Vector2:bezier_derivative(control_1, control_2, finish, t) end

---@param control_1 Vector2
---@param control_2 Vector2
---@param finish Vector2
---@param t number
---@return Vector2
function Vector2:bezier_interpolate(control_1, control_2, finish, t) end

---@param n Vector2
---@return Vector2
function Vector2:bounce(n) end

---@return Vector2
function Vector2:ceil() end

---@param min Vector2
---@param max Vector2
---@return Vector2
function Vector2:clamp(min, max) end

---@param min number
---@param max number
---@return Vector2
function Vector2:clampf(min, max) end

---@param with Vector2
---@return number
function Vector2:cross(with) end

---@param b Vector2
---@param pre_a Vector2
---@param post_b Vector2
---@param weight number
---@return Vector2
function Vector2:cubic_interpolate(b, pre_a, post_b, weight) end

---@param b Vector2
---@param pre_a Vector2
---@param post_b Vector2
---@param weight number
---@param b_t number
---@param pre_a_t number
---@param post_b_t number
---@return Vector2
function Vector2:cubic_interpolate_in_time(b, pre_a, post_b, weight, b_t, pre_a_t, post_b_t) end

---@param to Vector2
---@return Vector2
function Vector2:direction_to(to) end

---@param to Vector2
---@return number
function Vector2:distance_squared_to(to) end

---@param to Vector2
---@return number
function Vector2:distance_to(to) end

---@param with Vector2
---@return number
function Vector2:dot(with) end

---@return Vector2
function Vector2:floor() end

-- TODO: This is static
-- ---@param angle number
-- ---@return Vector2
-- function Vector2.from_angle(angle) end

---@param to Vector2
---@return boolean
function Vector2:is_equal_approx(to) end

---@return boolean
function Vector2:is_finite() end

---@return boolean
function Vector2:is_normalized() end

---@return boolean
function Vector2:is_zero_approx() end

---@return number
function Vector2:length() end

---@return number
function Vector2:length_squared() end

---@param to Vector2
---@param weight number
---@return Vector2
function Vector2:lerp(to, weight) end

---@param length number?  # default = 1.0
---@return Vector2
function Vector2:limit_length(length) end

---@param with Vector2
---@return Vector2
function Vector2:max(with) end

---@return integer
function Vector2:max_axis_index() end

---@param with Vector2
---@return Vector2
function Vector2:maxf(with) end

---@param with Vector2
---@return Vector2
function Vector2:min(with) end

---@return integer
function Vector2:min_axis_index() end

---@param with Vector2
---@return Vector2
function Vector2:minf(with) end

---@param to Vector2
---@param delta number
---@return Vector2
function Vector2:move_toward(to, delta) end

---@return Vector2
function Vector2:normalized() end

---@return Vector2
function Vector2:orthogonal() end

---@param mod number
---@return Vector2
function Vector2:posmod(mod) end

---@param modv Vector2
---@return Vector2
function Vector2:posmodv(modv) end

---@param b Vector2
---@return Vector2
function Vector2:project(b) end

---@param line Vector2
---@return Vector2
function Vector2:reflect(line) end

---@param angle number
---@return Vector2
function Vector2:rotated(angle) end

---@return Vector2
function Vector2:round() end

---@return Vector2
function Vector2:sign() end

---@param to Vector2
---@param weight number
---@return Vector2
function Vector2:slerp(to, weight) end

---@param n Vector2
---@return Vector2
function Vector2:slide(n) end

---@param step Vector2
---@return Vector2
function Vector2:snapped(step) end

---@param step number
---@return Vector2
function Vector2:snappedf(step) end


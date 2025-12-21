---@meta _
-- Generated API for game version 0.9.1

---@class RandomNumberGenerator : RefCounted
---@field seed integer
---@field state integer
local RandomNumberGenerator = {}

---@param seed integer
function RandomNumberGenerator.set_seed(seed) end

---@return integer
function RandomNumberGenerator.get_seed() end

---@param state integer
function RandomNumberGenerator.set_state(state) end

---@return integer
function RandomNumberGenerator.get_state() end

---@return integer
function RandomNumberGenerator.randi() end

---@return number
function RandomNumberGenerator.randf() end

---@param mean number?  # Default = 0.0
---@param deviation number?  # Default = 1.0
---@return number
function RandomNumberGenerator.randfn(mean, deviation) end

---@param from number
---@param to number
---@return number
function RandomNumberGenerator.randf_range(from, to) end

---@param from integer
---@param to integer
---@return integer
function RandomNumberGenerator.randi_range(from, to) end

---@param weights PackedFloat32Array
---@return integer
function RandomNumberGenerator.rand_weighted(weights) end

function RandomNumberGenerator.randomize() end

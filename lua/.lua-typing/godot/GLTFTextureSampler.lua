---@meta _
-- Generated API for game version 0.9.1

---@class GLTFTextureSampler : Resource
---@field mag_filter integer
---@field min_filter integer
---@field wrap_s integer
---@field wrap_t integer
local GLTFTextureSampler = {}

---@return integer
function GLTFTextureSampler.get_mag_filter() end

---@param filter_mode integer
function GLTFTextureSampler.set_mag_filter(filter_mode) end

---@return integer
function GLTFTextureSampler.get_min_filter() end

---@param filter_mode integer
function GLTFTextureSampler.set_min_filter(filter_mode) end

---@return integer
function GLTFTextureSampler.get_wrap_s() end

---@param wrap_mode integer
function GLTFTextureSampler.set_wrap_s(wrap_mode) end

---@return integer
function GLTFTextureSampler.get_wrap_t() end

---@param wrap_mode integer
function GLTFTextureSampler.set_wrap_t(wrap_mode) end

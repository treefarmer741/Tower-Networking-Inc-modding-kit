---@meta _
-- Generated API for game version 0.9.1

---@class FastNoiseLite : Noise
---@field noise_type integer
---@field seed integer
---@field frequency number
---@field offset Vector3
---@field fractal_type integer
---@field fractal_octaves integer
---@field fractal_lacunarity number
---@field fractal_gain number
---@field fractal_weighted_strength number
---@field fractal_ping_pong_strength number
---@field cellular_distance_function integer
---@field cellular_jitter number
---@field cellular_return_type integer
---@field domain_warp_enabled boolean
---@field domain_warp_type integer
---@field domain_warp_amplitude number
---@field domain_warp_frequency number
---@field domain_warp_fractal_type integer
---@field domain_warp_fractal_octaves integer
---@field domain_warp_fractal_lacunarity number
---@field domain_warp_fractal_gain number
local FastNoiseLite = {}

---@param type FastNoiseLite.NoiseType
function FastNoiseLite.set_noise_type(type) end

---@return FastNoiseLite.NoiseType
function FastNoiseLite.get_noise_type() end

---@param seed integer
function FastNoiseLite.set_seed(seed) end

---@return integer
function FastNoiseLite.get_seed() end

---@param freq number
function FastNoiseLite.set_frequency(freq) end

---@return number
function FastNoiseLite.get_frequency() end

---@param offset Vector3
function FastNoiseLite.set_offset(offset) end

---@return Vector3
function FastNoiseLite.get_offset() end

---@param type FastNoiseLite.FractalType
function FastNoiseLite.set_fractal_type(type) end

---@return FastNoiseLite.FractalType
function FastNoiseLite.get_fractal_type() end

---@param octave_count integer
function FastNoiseLite.set_fractal_octaves(octave_count) end

---@return integer
function FastNoiseLite.get_fractal_octaves() end

---@param lacunarity number
function FastNoiseLite.set_fractal_lacunarity(lacunarity) end

---@return number
function FastNoiseLite.get_fractal_lacunarity() end

---@param gain number
function FastNoiseLite.set_fractal_gain(gain) end

---@return number
function FastNoiseLite.get_fractal_gain() end

---@param weighted_strength number
function FastNoiseLite.set_fractal_weighted_strength(weighted_strength) end

---@return number
function FastNoiseLite.get_fractal_weighted_strength() end

---@param ping_pong_strength number
function FastNoiseLite.set_fractal_ping_pong_strength(ping_pong_strength) end

---@return number
function FastNoiseLite.get_fractal_ping_pong_strength() end

---@param func FastNoiseLite.CellularDistanceFunction
function FastNoiseLite.set_cellular_distance_function(func) end

---@return FastNoiseLite.CellularDistanceFunction
function FastNoiseLite.get_cellular_distance_function() end

---@param jitter number
function FastNoiseLite.set_cellular_jitter(jitter) end

---@return number
function FastNoiseLite.get_cellular_jitter() end

---@param ret FastNoiseLite.CellularReturnType
function FastNoiseLite.set_cellular_return_type(ret) end

---@return FastNoiseLite.CellularReturnType
function FastNoiseLite.get_cellular_return_type() end

---@param domain_warp_enabled boolean
function FastNoiseLite.set_domain_warp_enabled(domain_warp_enabled) end

---@return boolean
function FastNoiseLite.is_domain_warp_enabled() end

---@param domain_warp_type FastNoiseLite.DomainWarpType
function FastNoiseLite.set_domain_warp_type(domain_warp_type) end

---@return FastNoiseLite.DomainWarpType
function FastNoiseLite.get_domain_warp_type() end

---@param domain_warp_amplitude number
function FastNoiseLite.set_domain_warp_amplitude(domain_warp_amplitude) end

---@return number
function FastNoiseLite.get_domain_warp_amplitude() end

---@param domain_warp_frequency number
function FastNoiseLite.set_domain_warp_frequency(domain_warp_frequency) end

---@return number
function FastNoiseLite.get_domain_warp_frequency() end

---@param domain_warp_fractal_type FastNoiseLite.DomainWarpFractalType
function FastNoiseLite.set_domain_warp_fractal_type(domain_warp_fractal_type) end

---@return FastNoiseLite.DomainWarpFractalType
function FastNoiseLite.get_domain_warp_fractal_type() end

---@param domain_warp_octave_count integer
function FastNoiseLite.set_domain_warp_fractal_octaves(domain_warp_octave_count) end

---@return integer
function FastNoiseLite.get_domain_warp_fractal_octaves() end

---@param domain_warp_lacunarity number
function FastNoiseLite.set_domain_warp_fractal_lacunarity(domain_warp_lacunarity) end

---@return number
function FastNoiseLite.get_domain_warp_fractal_lacunarity() end

---@param domain_warp_gain number
function FastNoiseLite.set_domain_warp_fractal_gain(domain_warp_gain) end

---@return number
function FastNoiseLite.get_domain_warp_fractal_gain() end

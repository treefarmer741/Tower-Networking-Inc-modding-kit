---@meta _
-- Generated API for game version 0.10.0

---@class GLTFLight : Resource
---@field color Color
---@field intensity number
---@field light_type string
---@field range number
---@field inner_cone_angle number
---@field outer_cone_angle number
local GLTFLight = {}

---@param light_node Light3D
---@return GLTFLight
function GLTFLight.from_node(light_node) end

---@return Light3D
function GLTFLight.to_node() end

---@param dictionary table<any,any>
---@return GLTFLight
function GLTFLight.from_dictionary(dictionary) end

---@return table<any,any>
function GLTFLight.to_dictionary() end

---@return Color
function GLTFLight.get_color() end

---@param color Color
function GLTFLight.set_color(color) end

---@return number
function GLTFLight.get_intensity() end

---@param intensity number
function GLTFLight.set_intensity(intensity) end

---@return string
function GLTFLight.get_light_type() end

---@param light_type string
function GLTFLight.set_light_type(light_type) end

---@return number
function GLTFLight.get_range() end

---@param range number
function GLTFLight.set_range(range) end

---@return number
function GLTFLight.get_inner_cone_angle() end

---@param inner_cone_angle number
function GLTFLight.set_inner_cone_angle(inner_cone_angle) end

---@return number
function GLTFLight.get_outer_cone_angle() end

---@param outer_cone_angle number
function GLTFLight.set_outer_cone_angle(outer_cone_angle) end

---@param extension_name string
---@return Object
function GLTFLight.get_additional_data(extension_name) end

---@param extension_name string
---@param additional_data Object
function GLTFLight.set_additional_data(extension_name, additional_data) end

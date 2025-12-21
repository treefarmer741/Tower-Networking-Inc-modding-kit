---@meta _
-- Generated API for game version 0.9.1

---@class DPITexture : Texture2D
---@field base_scale number
---@field saturation number
---@field color_map table<Color,Color>
local DPITexture = {}

---@param source string
---@param scale number?  # Default = 1.0
---@param saturation number?  # Default = 1.0
---@param color_map table<any,any>?  # Default = {  }
---@return DPITexture
function DPITexture.create_from_string(source, scale, saturation, color_map) end

---@param source string
function DPITexture.set_source(source) end

---@return string
function DPITexture.get_source() end

---@param base_scale number
function DPITexture.set_base_scale(base_scale) end

---@return number
function DPITexture.get_base_scale() end

---@param saturation number
function DPITexture.set_saturation(saturation) end

---@return number
function DPITexture.get_saturation() end

---@param color_map table<any,any>
function DPITexture.set_color_map(color_map) end

---@return table<any,any>
function DPITexture.get_color_map() end

---@param size Vector2i
function DPITexture.set_size_override(size) end

---@return RID
function DPITexture.get_scaled_rid() end

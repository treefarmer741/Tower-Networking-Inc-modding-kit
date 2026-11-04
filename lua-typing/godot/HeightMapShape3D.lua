---@meta _
-- Generated API for game version 0.10.0

---@class HeightMapShape3D : Shape3D
---@field map_width integer
---@field map_depth integer
---@field map_data PackedFloat32Array
local HeightMapShape3D = {}

---@param width integer
function HeightMapShape3D.set_map_width(width) end

---@return integer
function HeightMapShape3D.get_map_width() end

---@param height integer
function HeightMapShape3D.set_map_depth(height) end

---@return integer
function HeightMapShape3D.get_map_depth() end

---@param data PackedFloat32Array
function HeightMapShape3D.set_map_data(data) end

---@return PackedFloat32Array
function HeightMapShape3D.get_map_data() end

---@return number
function HeightMapShape3D.get_min_height() end

---@return number
function HeightMapShape3D.get_max_height() end

---@param image Image
---@param height_min number
---@param height_max number
function HeightMapShape3D.update_map_data_from_image(image, height_min, height_max) end

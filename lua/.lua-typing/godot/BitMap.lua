---@meta _
-- Generated API for game version 0.9.1

---@class BitMap : Resource
---@field data table<any,any>
local BitMap = {}

---@param size Vector2i
function BitMap.create(size) end

---@param image Image
---@param threshold number?  # Default = 0.1
function BitMap.create_from_image_alpha(image, threshold) end

---@param position Vector2i
---@param bit boolean
function BitMap.set_bitv(position, bit) end

---@param x integer
---@param y integer
---@param bit boolean
function BitMap.set_bit(x, y, bit) end

---@param position Vector2i
---@return boolean
function BitMap.get_bitv(position) end

---@param x integer
---@param y integer
---@return boolean
function BitMap.get_bit(x, y) end

---@param rect Rect2i
---@param bit boolean
function BitMap.set_bit_rect(rect, bit) end

---@return integer
function BitMap.get_true_bit_count() end

---@return Vector2i
function BitMap.get_size() end

---@param new_size Vector2i
function BitMap.resize(new_size) end

---@param pixels integer
---@param rect Rect2i
function BitMap.grow_mask(pixels, rect) end

---@return Image
function BitMap.convert_to_image() end

---@param rect Rect2i
---@param epsilon number?  # Default = 2.0
---@return Array<PackedVector2Array>
function BitMap.opaque_to_polygons(rect, epsilon) end

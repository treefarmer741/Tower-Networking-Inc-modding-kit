---@meta _
-- Generated API for game version 0.10.0

---@class OpenXRCompositionLayer : Node3D
---@field layer_viewport Object
---@field use_android_surface boolean
---@field android_surface_size Vector2i
---@field sort_order integer
---@field alpha_blend boolean
---@field enable_hole_punch boolean
---@field swapchain_state_min_filter integer
---@field swapchain_state_mag_filter integer
---@field swapchain_state_mipmap_mode integer
---@field swapchain_state_horizontal_wrap integer
---@field swapchain_state_vertical_wrap integer
---@field swapchain_state_red_swizzle integer
---@field swapchain_state_green_swizzle integer
---@field swapchain_state_blue_swizzle integer
---@field swapchain_state_alpha_swizzle integer
---@field swapchain_state_max_anisotropy number
---@field swapchain_state_border_color Color
local OpenXRCompositionLayer = {}

---@param viewport SubViewport
function OpenXRCompositionLayer.set_layer_viewport(viewport) end

---@return SubViewport
function OpenXRCompositionLayer.get_layer_viewport() end

---@param enable boolean
function OpenXRCompositionLayer.set_use_android_surface(enable) end

---@return boolean
function OpenXRCompositionLayer.get_use_android_surface() end

---@param size Vector2i
function OpenXRCompositionLayer.set_android_surface_size(size) end

---@return Vector2i
function OpenXRCompositionLayer.get_android_surface_size() end

---@param enable boolean
function OpenXRCompositionLayer.set_enable_hole_punch(enable) end

---@return boolean
function OpenXRCompositionLayer.get_enable_hole_punch() end

---@param order integer
function OpenXRCompositionLayer.set_sort_order(order) end

---@return integer
function OpenXRCompositionLayer.get_sort_order() end

---@param enabled boolean
function OpenXRCompositionLayer.set_alpha_blend(enabled) end

---@return boolean
function OpenXRCompositionLayer.get_alpha_blend() end

---@return JavaObject
function OpenXRCompositionLayer.get_android_surface() end

---@return boolean
function OpenXRCompositionLayer.is_natively_supported() end

---@param mode OpenXRCompositionLayer.Filter
function OpenXRCompositionLayer.set_min_filter(mode) end

---@return OpenXRCompositionLayer.Filter
function OpenXRCompositionLayer.get_min_filter() end

---@param mode OpenXRCompositionLayer.Filter
function OpenXRCompositionLayer.set_mag_filter(mode) end

---@return OpenXRCompositionLayer.Filter
function OpenXRCompositionLayer.get_mag_filter() end

---@param mode OpenXRCompositionLayer.MipmapMode
function OpenXRCompositionLayer.set_mipmap_mode(mode) end

---@return OpenXRCompositionLayer.MipmapMode
function OpenXRCompositionLayer.get_mipmap_mode() end

---@param mode OpenXRCompositionLayer.Wrap
function OpenXRCompositionLayer.set_horizontal_wrap(mode) end

---@return OpenXRCompositionLayer.Wrap
function OpenXRCompositionLayer.get_horizontal_wrap() end

---@param mode OpenXRCompositionLayer.Wrap
function OpenXRCompositionLayer.set_vertical_wrap(mode) end

---@return OpenXRCompositionLayer.Wrap
function OpenXRCompositionLayer.get_vertical_wrap() end

---@param mode OpenXRCompositionLayer.Swizzle
function OpenXRCompositionLayer.set_red_swizzle(mode) end

---@return OpenXRCompositionLayer.Swizzle
function OpenXRCompositionLayer.get_red_swizzle() end

---@param mode OpenXRCompositionLayer.Swizzle
function OpenXRCompositionLayer.set_green_swizzle(mode) end

---@return OpenXRCompositionLayer.Swizzle
function OpenXRCompositionLayer.get_green_swizzle() end

---@param mode OpenXRCompositionLayer.Swizzle
function OpenXRCompositionLayer.set_blue_swizzle(mode) end

---@return OpenXRCompositionLayer.Swizzle
function OpenXRCompositionLayer.get_blue_swizzle() end

---@param mode OpenXRCompositionLayer.Swizzle
function OpenXRCompositionLayer.set_alpha_swizzle(mode) end

---@return OpenXRCompositionLayer.Swizzle
function OpenXRCompositionLayer.get_alpha_swizzle() end

---@param value number
function OpenXRCompositionLayer.set_max_anisotropy(value) end

---@return number
function OpenXRCompositionLayer.get_max_anisotropy() end

---@param color Color
function OpenXRCompositionLayer.set_border_color(color) end

---@return Color
function OpenXRCompositionLayer.get_border_color() end

---@param origin Vector3
---@param direction Vector3
---@return Vector2
function OpenXRCompositionLayer.intersects_ray(origin, direction) end

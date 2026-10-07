---@meta _
-- Generated API for game version 0.10.0

---@class ColorPicker : VBoxContainer
---@field color Color
---@field edit_alpha boolean
---@field edit_intensity boolean
---@field color_mode integer
---@field deferred_mode boolean
---@field picker_shape integer
---@field can_add_swatches boolean
---@field sampler_visible boolean
---@field color_modes_visible boolean
---@field sliders_visible boolean
---@field hex_visible boolean
---@field presets_visible boolean
local ColorPicker = {}

---@param color Color
function ColorPicker.set_pick_color(color) end

---@return Color
function ColorPicker.get_pick_color() end

---@param mode boolean
function ColorPicker.set_deferred_mode(mode) end

---@return boolean
function ColorPicker.is_deferred_mode() end

---@param color_mode ColorPicker.ColorModeType
function ColorPicker.set_color_mode(color_mode) end

---@return ColorPicker.ColorModeType
function ColorPicker.get_color_mode() end

---@param show boolean
function ColorPicker.set_edit_alpha(show) end

---@return boolean
function ColorPicker.is_editing_alpha() end

---@param show boolean
function ColorPicker.set_edit_intensity(show) end

---@return boolean
function ColorPicker.is_editing_intensity() end

---@param enabled boolean
function ColorPicker.set_can_add_swatches(enabled) end

---@return boolean
function ColorPicker.are_swatches_enabled() end

---@param visible boolean
function ColorPicker.set_presets_visible(visible) end

---@return boolean
function ColorPicker.are_presets_visible() end

---@param visible boolean
function ColorPicker.set_modes_visible(visible) end

---@return boolean
function ColorPicker.are_modes_visible() end

---@param visible boolean
function ColorPicker.set_sampler_visible(visible) end

---@return boolean
function ColorPicker.is_sampler_visible() end

---@param visible boolean
function ColorPicker.set_sliders_visible(visible) end

---@return boolean
function ColorPicker.are_sliders_visible() end

---@param visible boolean
function ColorPicker.set_hex_visible(visible) end

---@return boolean
function ColorPicker.is_hex_visible() end

---@param color Color
function ColorPicker.add_preset(color) end

---@param color Color
function ColorPicker.erase_preset(color) end

---@return PackedColorArray
function ColorPicker.get_presets() end

---@param color Color
function ColorPicker.add_recent_preset(color) end

---@param color Color
function ColorPicker.erase_recent_preset(color) end

---@return PackedColorArray
function ColorPicker.get_recent_presets() end

---@param shape ColorPicker.PickerShapeType
function ColorPicker.set_picker_shape(shape) end

---@return ColorPicker.PickerShapeType
function ColorPicker.get_picker_shape() end

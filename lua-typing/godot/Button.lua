---@meta _
-- Generated API for game version 0.10.0

---@class Button : BaseButton
---@field text string
---@field icon Texture2D
---@field flat boolean
---@field alignment integer
---@field text_overrun_behavior integer
---@field autowrap_mode integer
---@field autowrap_trim_flags integer
---@field clip_text boolean
---@field icon_alignment integer
---@field vertical_icon_alignment integer
---@field expand_icon boolean
---@field text_direction integer
---@field language string
local Button = {}

---@param text string
function Button.set_text(text) end

---@return string
function Button.get_text() end

---@param overrun_behavior TextServer.OverrunBehavior
function Button.set_text_overrun_behavior(overrun_behavior) end

---@return TextServer.OverrunBehavior
function Button.get_text_overrun_behavior() end

---@param autowrap_mode TextServer.AutowrapMode
function Button.set_autowrap_mode(autowrap_mode) end

---@return TextServer.AutowrapMode
function Button.get_autowrap_mode() end

---@param autowrap_trim_flags TextServer.LineBreakFlag
function Button.set_autowrap_trim_flags(autowrap_trim_flags) end

---@return TextServer.LineBreakFlag
function Button.get_autowrap_trim_flags() end

---@param direction Control.TextDirection
function Button.set_text_direction(direction) end

---@return Control.TextDirection
function Button.get_text_direction() end

---@param language string
function Button.set_language(language) end

---@return string
function Button.get_language() end

---@param texture Texture2D
function Button.set_button_icon(texture) end

---@return Texture2D
function Button.get_button_icon() end

---@param enabled boolean
function Button.set_flat(enabled) end

---@return boolean
function Button.is_flat() end

---@param enabled boolean
function Button.set_clip_text(enabled) end

---@return boolean
function Button.get_clip_text() end

---@param alignment HorizontalAlignment
function Button.set_text_alignment(alignment) end

---@return HorizontalAlignment
function Button.get_text_alignment() end

---@param icon_alignment HorizontalAlignment
function Button.set_icon_alignment(icon_alignment) end

---@return HorizontalAlignment
function Button.get_icon_alignment() end

---@param vertical_icon_alignment VerticalAlignment
function Button.set_vertical_icon_alignment(vertical_icon_alignment) end

---@return VerticalAlignment
function Button.get_vertical_icon_alignment() end

---@param enabled boolean
function Button.set_expand_icon(enabled) end

---@return boolean
function Button.is_expand_icon() end

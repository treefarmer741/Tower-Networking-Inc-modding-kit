---@meta _
-- Generated API for game version 0.10.0

---@class Label : Control
---@field text string
---@field label_settings LabelSettings
---@field horizontal_alignment integer
---@field vertical_alignment integer
---@field autowrap_mode integer
---@field autowrap_trim_flags integer
---@field justification_flags integer
---@field paragraph_separator string
---@field clip_text boolean
---@field text_overrun_behavior integer
---@field ellipsis_char string
---@field uppercase boolean
---@field tab_stops PackedFloat32Array
---@field lines_skipped integer
---@field max_lines_visible integer
---@field visible_characters integer
---@field visible_characters_behavior integer
---@field visible_ratio number
---@field text_direction integer
---@field language string
---@field structured_text_bidi_override integer
---@field structured_text_bidi_override_options Array<any>
local Label = {}

---@param alignment HorizontalAlignment
function Label.set_horizontal_alignment(alignment) end

---@return HorizontalAlignment
function Label.get_horizontal_alignment() end

---@param alignment VerticalAlignment
function Label.set_vertical_alignment(alignment) end

---@return VerticalAlignment
function Label.get_vertical_alignment() end

---@param text string
function Label.set_text(text) end

---@return string
function Label.get_text() end

---@param settings LabelSettings
function Label.set_label_settings(settings) end

---@return LabelSettings
function Label.get_label_settings() end

---@param direction Control.TextDirection
function Label.set_text_direction(direction) end

---@return Control.TextDirection
function Label.get_text_direction() end

---@param language string
function Label.set_language(language) end

---@return string
function Label.get_language() end

---@param paragraph_separator string
function Label.set_paragraph_separator(paragraph_separator) end

---@return string
function Label.get_paragraph_separator() end

---@param autowrap_mode TextServer.AutowrapMode
function Label.set_autowrap_mode(autowrap_mode) end

---@return TextServer.AutowrapMode
function Label.get_autowrap_mode() end

---@param autowrap_trim_flags TextServer.LineBreakFlag
function Label.set_autowrap_trim_flags(autowrap_trim_flags) end

---@return TextServer.LineBreakFlag
function Label.get_autowrap_trim_flags() end

---@param justification_flags TextServer.JustificationFlag
function Label.set_justification_flags(justification_flags) end

---@return TextServer.JustificationFlag
function Label.get_justification_flags() end

---@param enable boolean
function Label.set_clip_text(enable) end

---@return boolean
function Label.is_clipping_text() end

---@param tab_stops PackedFloat32Array
function Label.set_tab_stops(tab_stops) end

---@return PackedFloat32Array
function Label.get_tab_stops() end

---@param overrun_behavior TextServer.OverrunBehavior
function Label.set_text_overrun_behavior(overrun_behavior) end

---@return TextServer.OverrunBehavior
function Label.get_text_overrun_behavior() end

---@param char string
function Label.set_ellipsis_char(char) end

---@return string
function Label.get_ellipsis_char() end

---@param enable boolean
function Label.set_uppercase(enable) end

---@return boolean
function Label.is_uppercase() end

---@param line integer?  # Default = -1
---@return integer
function Label.get_line_height(line) end

---@return integer
function Label.get_line_count() end

---@return integer
function Label.get_visible_line_count() end

---@return integer
function Label.get_total_character_count() end

---@param amount integer
function Label.set_visible_characters(amount) end

---@return integer
function Label.get_visible_characters() end

---@return TextServer.VisibleCharactersBehavior
function Label.get_visible_characters_behavior() end

---@param behavior TextServer.VisibleCharactersBehavior
function Label.set_visible_characters_behavior(behavior) end

---@param ratio number
function Label.set_visible_ratio(ratio) end

---@return number
function Label.get_visible_ratio() end

---@param lines_skipped integer
function Label.set_lines_skipped(lines_skipped) end

---@return integer
function Label.get_lines_skipped() end

---@param lines_visible integer
function Label.set_max_lines_visible(lines_visible) end

---@return integer
function Label.get_max_lines_visible() end

---@param parser TextServer.StructuredTextParser
function Label.set_structured_text_bidi_override(parser) end

---@return TextServer.StructuredTextParser
function Label.get_structured_text_bidi_override() end

---@param args Array<any>
function Label.set_structured_text_bidi_override_options(args) end

---@return Array<any>
function Label.get_structured_text_bidi_override_options() end

---@param pos integer
---@return Rect2
function Label.get_character_bounds(pos) end

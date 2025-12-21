---@meta _
-- Generated API for game version 0.9.1

---@class FoldableContainer : Container
---@field folded boolean
---@field title string
---@field title_alignment integer
---@field title_position integer
---@field title_text_overrun_behavior integer
---@field foldable_group FoldableGroup
---@field title_text_direction integer
---@field language string
local FoldableContainer = {}

function FoldableContainer.fold() end

function FoldableContainer.expand() end

---@param folded boolean
function FoldableContainer.set_folded(folded) end

---@return boolean
function FoldableContainer.is_folded() end

---@param button_group FoldableGroup
function FoldableContainer.set_foldable_group(button_group) end

---@return FoldableGroup
function FoldableContainer.get_foldable_group() end

---@param text string
function FoldableContainer.set_title(text) end

---@return string
function FoldableContainer.get_title() end

---@param alignment HorizontalAlignment
function FoldableContainer.set_title_alignment(alignment) end

---@return HorizontalAlignment
function FoldableContainer.get_title_alignment() end

---@param language string
function FoldableContainer.set_language(language) end

---@return string
function FoldableContainer.get_language() end

---@param text_direction Control.TextDirection
function FoldableContainer.set_title_text_direction(text_direction) end

---@return Control.TextDirection
function FoldableContainer.get_title_text_direction() end

---@param overrun_behavior TextServer.OverrunBehavior
function FoldableContainer.set_title_text_overrun_behavior(overrun_behavior) end

---@return TextServer.OverrunBehavior
function FoldableContainer.get_title_text_overrun_behavior() end

---@param title_position FoldableContainer.TitlePosition
function FoldableContainer.set_title_position(title_position) end

---@return FoldableContainer.TitlePosition
function FoldableContainer.get_title_position() end

---@param control Control
function FoldableContainer.add_title_bar_control(control) end

---@param control Control
function FoldableContainer.remove_title_bar_control(control) end

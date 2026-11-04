---@meta _
-- Generated API for game version 0.10.0

---@class LinkButton : BaseButton
---@field text string
---@field underline integer
---@field uri string
---@field text_direction integer
---@field language string
---@field structured_text_bidi_override integer
---@field structured_text_bidi_override_options Array<any>
local LinkButton = {}

---@param text string
function LinkButton.set_text(text) end

---@return string
function LinkButton.get_text() end

---@param direction Control.TextDirection
function LinkButton.set_text_direction(direction) end

---@return Control.TextDirection
function LinkButton.get_text_direction() end

---@param language string
function LinkButton.set_language(language) end

---@return string
function LinkButton.get_language() end

---@param uri string
function LinkButton.set_uri(uri) end

---@return string
function LinkButton.get_uri() end

---@param underline_mode LinkButton.UnderlineMode
function LinkButton.set_underline_mode(underline_mode) end

---@return LinkButton.UnderlineMode
function LinkButton.get_underline_mode() end

---@param parser TextServer.StructuredTextParser
function LinkButton.set_structured_text_bidi_override(parser) end

---@return TextServer.StructuredTextParser
function LinkButton.get_structured_text_bidi_override() end

---@param args Array<any>
function LinkButton.set_structured_text_bidi_override_options(args) end

---@return Array<any>
function LinkButton.get_structured_text_bidi_override_options() end

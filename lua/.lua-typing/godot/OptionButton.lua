---@meta _
-- Generated API for game version 0.10.0

---@class OptionButton : Button
---@field selected integer
---@field fit_to_longest_item boolean
---@field allow_reselect boolean
---@field item_count Items,popup/item_
local OptionButton = {}

---@param label string
---@param id integer?  # Default = -1
function OptionButton.add_item(label, id) end

---@param texture Texture2D
---@param label string
---@param id integer?  # Default = -1
function OptionButton.add_icon_item(texture, label, id) end

---@param idx integer
---@param text string
function OptionButton.set_item_text(idx, text) end

---@param idx integer
---@param texture Texture2D
function OptionButton.set_item_icon(idx, texture) end

---@param idx integer
---@param disabled boolean
function OptionButton.set_item_disabled(idx, disabled) end

---@param idx integer
---@param id integer
function OptionButton.set_item_id(idx, id) end

---@param idx integer
---@param metadata Object
function OptionButton.set_item_metadata(idx, metadata) end

---@param idx integer
---@param tooltip string
function OptionButton.set_item_tooltip(idx, tooltip) end

---@param idx integer
---@param mode Node.AutoTranslateMode
function OptionButton.set_item_auto_translate_mode(idx, mode) end

---@param idx integer
---@return string
function OptionButton.get_item_text(idx) end

---@param idx integer
---@return Texture2D
function OptionButton.get_item_icon(idx) end

---@param idx integer
---@return integer
function OptionButton.get_item_id(idx) end

---@param id integer
---@return integer
function OptionButton.get_item_index(id) end

---@param idx integer
---@return Object
function OptionButton.get_item_metadata(idx) end

---@param idx integer
---@return string
function OptionButton.get_item_tooltip(idx) end

---@param idx integer
---@return Node.AutoTranslateMode
function OptionButton.get_item_auto_translate_mode(idx) end

---@param idx integer
---@return boolean
function OptionButton.is_item_disabled(idx) end

---@param idx integer
---@return boolean
function OptionButton.is_item_separator(idx) end

---@param text string?  # Default = 
function OptionButton.add_separator(text) end

function OptionButton.clear() end

---@param idx integer
function OptionButton.select(idx) end

---@return integer
function OptionButton.get_selected() end

---@return integer
function OptionButton.get_selected_id() end

---@return Object
function OptionButton.get_selected_metadata() end

---@param idx integer
function OptionButton.remove_item(idx) end

---@return PopupMenu
function OptionButton.get_popup() end

function OptionButton.show_popup() end

---@param count integer
function OptionButton.set_item_count(count) end

---@return integer
function OptionButton.get_item_count() end

---@return boolean
function OptionButton.has_selectable_items() end

---@param from_last boolean?  # Default = false
---@return integer
function OptionButton.get_selectable_item(from_last) end

---@param fit boolean
function OptionButton.set_fit_to_longest_item(fit) end

---@return boolean
function OptionButton.is_fit_to_longest_item() end

---@param allow boolean
function OptionButton.set_allow_reselect(allow) end

---@return boolean
function OptionButton.get_allow_reselect() end

---@param disabled boolean
function OptionButton.set_disable_shortcuts(disabled) end

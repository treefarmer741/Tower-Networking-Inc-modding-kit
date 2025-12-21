---@meta _
-- Generated API for game version 0.9.1

---@class InputEventKey : InputEventWithModifiers
---@field pressed boolean
---@field keycode integer
---@field physical_keycode integer
---@field key_label integer
---@field unicode integer
---@field location integer
---@field echo boolean
local InputEventKey = {}

---@param pressed boolean
function InputEventKey.set_pressed(pressed) end

---@param keycode Key
function InputEventKey.set_keycode(keycode) end

---@return Key
function InputEventKey.get_keycode() end

---@param physical_keycode Key
function InputEventKey.set_physical_keycode(physical_keycode) end

---@return Key
function InputEventKey.get_physical_keycode() end

---@param key_label Key
function InputEventKey.set_key_label(key_label) end

---@return Key
function InputEventKey.get_key_label() end

---@param unicode integer
function InputEventKey.set_unicode(unicode) end

---@return integer
function InputEventKey.get_unicode() end

---@param location KeyLocation
function InputEventKey.set_location(location) end

---@return KeyLocation
function InputEventKey.get_location() end

---@param echo boolean
function InputEventKey.set_echo(echo) end

---@return Key
function InputEventKey.get_keycode_with_modifiers() end

---@return Key
function InputEventKey.get_physical_keycode_with_modifiers() end

---@return Key
function InputEventKey.get_key_label_with_modifiers() end

---@return string
function InputEventKey.as_text_keycode() end

---@return string
function InputEventKey.as_text_physical_keycode() end

---@return string
function InputEventKey.as_text_key_label() end

---@return string
function InputEventKey.as_text_location() end

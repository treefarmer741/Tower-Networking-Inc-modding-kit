---@meta _
-- Generated API for game version 0.10.0

---@class Translation : Resource
---@field messages table<any,any>
---@field locale string
local Translation = {}

---@param locale string
function Translation.set_locale(locale) end

---@return string
function Translation.get_locale() end

---@param src_message string
---@param xlated_message string
---@param context string?  # Default = 
function Translation.add_message(src_message, xlated_message, context) end

---@param src_message string
---@param xlated_messages PackedStringArray
---@param context string?  # Default = 
function Translation.add_plural_message(src_message, xlated_messages, context) end

---@param src_message string
---@param context string?  # Default = 
---@return string
function Translation.get_message(src_message, context) end

---@param src_message string
---@param src_plural_message string
---@param n integer
---@param context string?  # Default = 
---@return string
function Translation.get_plural_message(src_message, src_plural_message, n, context) end

---@param src_message string
---@param context string?  # Default = 
function Translation.erase_message(src_message, context) end

---@return PackedStringArray
function Translation.get_message_list() end

---@return PackedStringArray
function Translation.get_translated_message_list() end

---@return integer
function Translation.get_message_count() end

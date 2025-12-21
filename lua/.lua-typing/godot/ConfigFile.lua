---@meta _
-- Generated API for game version 0.9.1

---@class ConfigFile : RefCounted
local ConfigFile = {}

---@param section string
---@param key string
---@param value Object
function ConfigFile.set_value(section, key, value) end

---@param section string
---@param key string
---@param default Object?  # Default = <null>
---@return Object
function ConfigFile.get_value(section, key, default) end

---@param section string
---@return boolean
function ConfigFile.has_section(section) end

---@param section string
---@param key string
---@return boolean
function ConfigFile.has_section_key(section, key) end

---@return PackedStringArray
function ConfigFile.get_sections() end

---@param section string
---@return PackedStringArray
function ConfigFile.get_section_keys(section) end

---@param section string
function ConfigFile.erase_section(section) end

---@param section string
---@param key string
function ConfigFile.erase_section_key(section, key) end

---@param path string
---@return Error
function ConfigFile.load(path) end

---@param data string
---@return Error
function ConfigFile.parse(data) end

---@param path string
---@return Error
function ConfigFile.save(path) end

---@return string
function ConfigFile.encode_to_text() end

---@param path string
---@param key PackedByteArray
---@return Error
function ConfigFile.load_encrypted(path, key) end

---@param path string
---@param password string
---@return Error
function ConfigFile.load_encrypted_pass(path, password) end

---@param path string
---@param key PackedByteArray
---@return Error
function ConfigFile.save_encrypted(path, key) end

---@param path string
---@param password string
---@return Error
function ConfigFile.save_encrypted_pass(path, password) end

function ConfigFile.clear() end

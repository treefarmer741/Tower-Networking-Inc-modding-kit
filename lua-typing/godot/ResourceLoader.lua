---@meta _
-- Generated API for game version 0.10.0

---@class ResourceLoader : Object
local ResourceLoader = {}

---@param path string
---@param type_hint string?  # Default = 
---@param use_sub_threads boolean?  # Default = false
---@param cache_mode ResourceLoader.CacheMode?  # Default = 1
---@return Error
function ResourceLoader.load_threaded_request(path, type_hint, use_sub_threads, cache_mode) end

---@param path string
---@param progress Array<any>?  # Default = []
---@return ResourceLoader.ThreadLoadStatus
function ResourceLoader.load_threaded_get_status(path, progress) end

---@param path string
---@return Resource
function ResourceLoader.load_threaded_get(path) end

---@param path string
---@param type_hint string?  # Default = 
---@param cache_mode ResourceLoader.CacheMode?  # Default = 1
---@return Resource
function ResourceLoader.load(path, type_hint, cache_mode) end

---@param type string
---@return PackedStringArray
function ResourceLoader.get_recognized_extensions_for_type(type) end

---@param format_loader ResourceFormatLoader
---@param at_front boolean?  # Default = false
function ResourceLoader.add_resource_format_loader(format_loader, at_front) end

---@param format_loader ResourceFormatLoader
function ResourceLoader.remove_resource_format_loader(format_loader) end

---@param abort boolean
function ResourceLoader.set_abort_on_missing_resources(abort) end

---@param path string
---@return PackedStringArray
function ResourceLoader.get_dependencies(path) end

---@param path string
---@return boolean
function ResourceLoader.has_cached(path) end

---@param path string
---@return Resource
function ResourceLoader.get_cached_ref(path) end

---@param path string
---@param type_hint string?  # Default = 
---@return boolean
function ResourceLoader.exists(path, type_hint) end

---@param path string
---@return integer
function ResourceLoader.get_resource_uid(path) end

---@param directory_path string
---@return PackedStringArray
function ResourceLoader.list_directory(directory_path) end

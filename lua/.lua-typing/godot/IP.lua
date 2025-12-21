---@meta _
-- Generated API for game version 0.9.1

---@class IP : Object
local IP = {}

---@param host string
---@param ip_type IP.Type?  # Default = 3
---@return string
function IP.resolve_hostname(host, ip_type) end

---@param host string
---@param ip_type IP.Type?  # Default = 3
---@return PackedStringArray
function IP.resolve_hostname_addresses(host, ip_type) end

---@param host string
---@param ip_type IP.Type?  # Default = 3
---@return integer
function IP.resolve_hostname_queue_item(host, ip_type) end

---@param id integer
---@return IP.ResolverStatus
function IP.get_resolve_item_status(id) end

---@param id integer
---@return string
function IP.get_resolve_item_address(id) end

---@param id integer
---@return Array<any>
function IP.get_resolve_item_addresses(id) end

---@param id integer
function IP.erase_resolve_item(id) end

---@return PackedStringArray
function IP.get_local_addresses() end

---@return Array<Dictionary>
function IP.get_local_interfaces() end

---@param hostname string?  # Default = 
function IP.clear_cache(hostname) end

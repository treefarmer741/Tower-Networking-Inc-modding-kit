---@meta _
-- Generated API for game version 0.9.1

---@class UPNPDevice : RefCounted
---@field description_url string
---@field service_type string
---@field igd_control_url string
---@field igd_service_type string
---@field igd_our_addr string
---@field igd_status integer
local UPNPDevice = {}

---@return boolean
function UPNPDevice.is_valid_gateway() end

---@return string
function UPNPDevice.query_external_address() end

---@param port integer
---@param port_internal integer?  # Default = 0
---@param desc string?  # Default = 
---@param proto string?  # Default = UDP
---@param duration integer?  # Default = 0
---@return integer
function UPNPDevice.add_port_mapping(port, port_internal, desc, proto, duration) end

---@param port integer
---@param proto string?  # Default = UDP
---@return integer
function UPNPDevice.delete_port_mapping(port, proto) end

---@param url string
function UPNPDevice.set_description_url(url) end

---@return string
function UPNPDevice.get_description_url() end

---@param type string
function UPNPDevice.set_service_type(type) end

---@return string
function UPNPDevice.get_service_type() end

---@param url string
function UPNPDevice.set_igd_control_url(url) end

---@return string
function UPNPDevice.get_igd_control_url() end

---@param type string
function UPNPDevice.set_igd_service_type(type) end

---@return string
function UPNPDevice.get_igd_service_type() end

---@param addr string
function UPNPDevice.set_igd_our_addr(addr) end

---@return string
function UPNPDevice.get_igd_our_addr() end

---@param status UPNPDevice.IGDStatus
function UPNPDevice.set_igd_status(status) end

---@return UPNPDevice.IGDStatus
function UPNPDevice.get_igd_status() end

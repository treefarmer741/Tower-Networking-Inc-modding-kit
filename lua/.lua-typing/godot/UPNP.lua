---@meta _
-- Generated API for game version 0.10.0

---@class UPNP : RefCounted
---@field discover_multicast_if string
---@field discover_local_port integer
---@field discover_ipv6 boolean
local UPNP = {}

---@return integer
function UPNP.get_device_count() end

---@param index integer
---@return UPNPDevice
function UPNP.get_device(index) end

---@param device UPNPDevice
function UPNP.add_device(device) end

---@param index integer
---@param device UPNPDevice
function UPNP.set_device(index, device) end

---@param index integer
function UPNP.remove_device(index) end

function UPNP.clear_devices() end

---@return UPNPDevice
function UPNP.get_gateway() end

---@param timeout integer?  # Default = 2000
---@param ttl integer?  # Default = 2
---@param device_filter string?  # Default = InternetGatewayDevice
---@return integer
function UPNP.discover(timeout, ttl, device_filter) end

---@return string
function UPNP.query_external_address() end

---@param port integer
---@param port_internal integer?  # Default = 0
---@param desc string?  # Default = 
---@param proto string?  # Default = UDP
---@param duration integer?  # Default = 0
---@return integer
function UPNP.add_port_mapping(port, port_internal, desc, proto, duration) end

---@param port integer
---@param proto string?  # Default = UDP
---@return integer
function UPNP.delete_port_mapping(port, proto) end

---@param m_if string
function UPNP.set_discover_multicast_if(m_if) end

---@return string
function UPNP.get_discover_multicast_if() end

---@param port integer
function UPNP.set_discover_local_port(port) end

---@return integer
function UPNP.get_discover_local_port() end

---@param ipv6 boolean
function UPNP.set_discover_ipv6(ipv6) end

---@return boolean
function UPNP.is_discover_ipv6() end

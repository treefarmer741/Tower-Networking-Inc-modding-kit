---@meta _
-- Generated API for game version 0.9.1

---@class IdentifierRegistry : Node
---@field MAX_HW_ADDR integer # Constant value: 100000
---@field DHCP_LEN integer # Constant value: 4
local IdentifierRegistry = {}

function IdentifierRegistry.clear_all() end

---@param addr Object
---@param requestor string
function IdentifierRegistry.reserve_hwaddress(addr, requestor) end

---@param test_addr Object
---@param requestor string
function IdentifierRegistry.unreserve_hwaddress(test_addr, requestor) end

---@param test_name Object
---@param requestor string
function IdentifierRegistry.unreserve_username(test_name, requestor) end

---@param addr Object
---@param requestor Object
function IdentifierRegistry.reserve_netaddress(addr, requestor) end

---@param requestor Object
function IdentifierRegistry.release_netaddress(requestor) end

---@param username Object
---@param requestor string
function IdentifierRegistry.reserve_username(username, requestor) end

---@param _requestor Object?  # Default = true
---@param prefix string?  # Default = 
---@return Object
function IdentifierRegistry.get_unique_netaddr(_requestor, prefix) end

---@return Object
function IdentifierRegistry.get_unique_username() end

---@return Object
function IdentifierRegistry.get_unique_hwaddress() end

---@param _registry table<any,any>
function IdentifierRegistry.get_unique_numerical_address(_registry) end

---@param _registry Array<any>
---@param prefix string?  # Default = 
function IdentifierRegistry.get_unique_alphabet_address(_registry, prefix) end

---@param _registry table<any,any>
---@return Object
function IdentifierRegistry.get_unique_identity(_registry) end

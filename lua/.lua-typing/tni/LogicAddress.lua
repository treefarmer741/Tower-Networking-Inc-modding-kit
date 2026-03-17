---@meta _
-- Generated API for game version 0.10.0

---@class LogicAddress : Object
---@field MAX_NADDR_CHARS integer # Constant value: 15
---@field BAD_COLOR string # Constant value: A52A2A
---@field EMPTY_COLOR string # Constant value: 778899
---@field HW_COLOR string # Constant value: 00FA9A
---@field FQDN_COLOR string # Constant value: FFB6C1
---@field NW_COLOR string # Constant value: FF0565
local LogicAddress = {}

---@param addr1 string
---@param addr2 string
---@return boolean
function LogicAddress.is_equivalent_addr(addr1, addr2) end

---@param addr1 string
---@param prefix1 string
---@return boolean
function LogicAddress.is_prefixed_with(addr1, prefix1) end

---@param addr1 string
---@return Object
function LogicAddress.get_addr_color_bbtag(addr1) end

---@param addr1 string
---@param fixed_width integer?  # Default = 0
---@param replace_empty_with string?  # Default = unassign
---@param empty_color string?  # Default = 778899
---@param return_color_only boolean?  # Default = false
---@return string
function LogicAddress.colorize_addr(addr1, fixed_width, replace_empty_with, empty_color, return_color_only) end

---@param addr1 string
---@return boolean
function LogicAddress.is_valid_laddr(addr1) end

---@param addr1 string
---@return boolean
function LogicAddress.is_valid_netaddr(addr1) end

---@param fqdn1 Object
---@return boolean
function LogicAddress.is_valid_fqdn(fqdn1) end

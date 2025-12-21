---@meta _
-- Generated API for game version 0.9.1

---@class NetworkPacket : RefCounted
local NetworkPacket = {}

---@param lgctl LogicController
---@param traffic_class string
---@param traffic_weight integer
---@param dst_addr Object?  # Default = <null>
---@param ttl integer?  # Default = 64
---@return table<any,any>
function NetworkPacket.create_simdict_npacket(lgctl, traffic_class, traffic_weight, dst_addr, ttl) end

---@meta _
-- Generated API for game version 0.10.0

---@class NavigationPathQueryResult2D : RefCounted
---@field path PackedVector2Array
---@field path_types PackedInt32Array
---@field path_rids Array<RID>
---@field path_owner_ids PackedInt64Array
---@field path_length number
local NavigationPathQueryResult2D = {}

---@param path PackedVector2Array
function NavigationPathQueryResult2D.set_path(path) end

---@return PackedVector2Array
function NavigationPathQueryResult2D.get_path() end

---@param path_types PackedInt32Array
function NavigationPathQueryResult2D.set_path_types(path_types) end

---@return PackedInt32Array
function NavigationPathQueryResult2D.get_path_types() end

---@param path_rids Array<RID>
function NavigationPathQueryResult2D.set_path_rids(path_rids) end

---@return Array<RID>
function NavigationPathQueryResult2D.get_path_rids() end

---@param path_owner_ids PackedInt64Array
function NavigationPathQueryResult2D.set_path_owner_ids(path_owner_ids) end

---@return PackedInt64Array
function NavigationPathQueryResult2D.get_path_owner_ids() end

---@param length number
function NavigationPathQueryResult2D.set_path_length(length) end

---@return number
function NavigationPathQueryResult2D.get_path_length() end

function NavigationPathQueryResult2D.reset() end

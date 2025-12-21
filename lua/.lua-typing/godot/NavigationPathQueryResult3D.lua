---@meta _
-- Generated API for game version 0.9.1

---@class NavigationPathQueryResult3D : RefCounted
---@field path PackedVector3Array
---@field path_types PackedInt32Array
---@field path_rids Array<RID>
---@field path_owner_ids PackedInt64Array
---@field path_length number
local NavigationPathQueryResult3D = {}

---@param path PackedVector3Array
function NavigationPathQueryResult3D.set_path(path) end

---@return PackedVector3Array
function NavigationPathQueryResult3D.get_path() end

---@param path_types PackedInt32Array
function NavigationPathQueryResult3D.set_path_types(path_types) end

---@return PackedInt32Array
function NavigationPathQueryResult3D.get_path_types() end

---@param path_rids Array<RID>
function NavigationPathQueryResult3D.set_path_rids(path_rids) end

---@return Array<RID>
function NavigationPathQueryResult3D.get_path_rids() end

---@param path_owner_ids PackedInt64Array
function NavigationPathQueryResult3D.set_path_owner_ids(path_owner_ids) end

---@return PackedInt64Array
function NavigationPathQueryResult3D.get_path_owner_ids() end

---@param length number
function NavigationPathQueryResult3D.set_path_length(length) end

---@return number
function NavigationPathQueryResult3D.get_path_length() end

function NavigationPathQueryResult3D.reset() end

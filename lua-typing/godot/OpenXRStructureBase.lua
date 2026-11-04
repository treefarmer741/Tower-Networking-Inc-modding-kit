---@meta _
-- Generated API for game version 0.13.3

---@class OpenXRStructureBase : RefCounted
---@field next OpenXRStructureBase
local OpenXRStructureBase = {}

---@return integer
function OpenXRStructureBase.get_structure_type() end

---@param entity OpenXRStructureBase
function OpenXRStructureBase.set_next(entity) end

---@return OpenXRStructureBase
function OpenXRStructureBase.get_next() end

---@meta _
-- Generated API for game version 0.10.0

---@class FoldableGroup : Resource
---@field allow_folding_all boolean
local FoldableGroup = {}

---@return FoldableContainer
function FoldableGroup.get_expanded_container() end

---@return Array<FoldableContainer>
function FoldableGroup.get_containers() end

---@param enabled boolean
function FoldableGroup.set_allow_folding_all(enabled) end

---@return boolean
function FoldableGroup.is_allow_folding_all() end

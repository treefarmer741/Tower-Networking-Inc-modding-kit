---@meta _
-- Generated API for game version 0.10.0

---@class GameWorldUtils : Object
---@field GW_RESERVED_GROUP_NAME string # Constant value: __pgc_game_world
---@field GU_RESERVED_GROUP_NAME string # Constant value: __pgc_game_unique_
local GameWorldUtils = {}

---@param subject Node
---@param reserved_group_name string
function GameWorldUtils.designate_as(subject, reserved_group_name) end

---@param subject Node
---@param reserved_group_name string
---@return Node
function GameWorldUtils.get_gn(subject, reserved_group_name) end

---@param subject Node
function GameWorldUtils.designate_as_world(subject) end

---@param subject Node
---@param key string
function GameWorldUtils.designate_as_unique(subject, key) end

---@param subject Node
---@return Node
function GameWorldUtils.get_world_of(subject) end

---@param subject Node
---@param key string
---@return Node
function GameWorldUtils.get_unique_in_world_of(subject, key) end

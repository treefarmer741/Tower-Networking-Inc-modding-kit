---@meta _
-- Generated API for game version 0.9.1

---@class Catalog : Control
---@field floor_info_scn string # Constant value: <PackedScene>
---@field user_info_scn string # Constant value: <PackedScene>
---@field animation_player AnimationPlayer
---@field ufloor_info_ctn Container
---@field users_info_ctn Container
---@field floor_ldlbl Label
---@field user_ldlbl Label
---@field is_unlockable_floor_info_ready boolean
---@field is_userstamp_info_ready boolean
---@field ea_unlockable_floors_scnpath Array<any>
---@field ea_unlockable_floors_info table<any,any>
---@field ea_users_scnpath Array<any>
---@field ea_users_info table<any,any>
local Catalog = {}

function Catalog.cache_ulfinfo() end

function Catalog.fade_out() end

function Catalog.fade_in() end

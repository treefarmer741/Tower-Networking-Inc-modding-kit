---@meta _
-- Generated API for game version 0.9.1

---@class LobbyItem : HBoxContainer
---@field host_name string
---@field game_name string
---@field stats_override string
---@field num_players integer
---@field max_players integer
---@field join_button Button
local LobbyItem = {}

function LobbyItem.hide_join_button() end

function LobbyItem.disable_join_button() end

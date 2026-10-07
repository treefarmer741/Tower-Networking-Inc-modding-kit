---@meta _
-- Generated API for game version 0.13.1

---@class GameMessage : Object
---@field msgid integer
---@field title string
---@field content string
---@field date integer
---@field read integer
---@field event_kind integer
---@field event_at number
local GameMessage = {}
---@enum GameMessage.EventKind
GameMessage.EventKind = {
	["NONE"] = 0,
	["POWER_OUTAGE"] = 1,
	["POWER_SURGE"] = 2,
	["WORM_ATTACK"] = 3,
	["COORDINATED_ATTACK"] = 4,
	["DEBT_DEADLINE"] = 5,
	["SLA_WARNING"] = 6,
}

---@return string
function GameMessage.serialize() end

---@param jsonstr string
---@return GameMessage
function GameMessage.from_json(jsonstr) end

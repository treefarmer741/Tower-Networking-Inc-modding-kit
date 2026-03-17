---@meta _
-- Generated API for game version 0.10.0

---@class GameMessage : Object
---@field msgid integer
---@field title string
---@field content string
---@field date integer
---@field read integer
local GameMessage = {}

---@return string
function GameMessage.serialize() end

---@param jsonstr string
---@return GameMessage
function GameMessage.from_json(jsonstr) end

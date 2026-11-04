---@meta _
-- Generated API for game version 0.13.4

---@class S9KrakenProbeCensusScript : RefCounted
---@field MOVING_SPEED number # Constant value: 2.0
---@field world Node
---@field cables Array<any>
---@field links Array<any>
---@field devices Array<any>
local S9KrakenProbeCensusScript = {}

function S9KrakenProbeCensusScript.refresh() end

---@return table<any,any>
function S9KrakenProbeCensusScript.count() end

---@return table<any,any>
function S9KrakenProbeCensusScript.physics_population() end

---@return Vector2i
function S9KrakenProbeCensusScript.moving_pieces() end

---@param e Object
---@return string
function S9KrakenProbeCensusScript.end_kind(e) end

---@param subset Array<any>
---@return integer
function S9KrakenProbeCensusScript.awake_pieces(subset) end

---@param subset Array<any>
---@return number
function S9KrakenProbeCensusScript.max_stretch(subset) end

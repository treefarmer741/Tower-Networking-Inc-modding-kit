---@meta _
-- Generated API for game version 0.13.4

---@class S6ElevatorProbeCensusScript : RefCounted
---@field MOVING_SPEED number # Constant value: 2.0
---@field world Node
---@field cables Array<any>
---@field links Array<any>
---@field devices Array<any>
local S6ElevatorProbeCensusScript = {}

function S6ElevatorProbeCensusScript.refresh() end

---@return table<any,any>
function S6ElevatorProbeCensusScript.count() end

---@return table<any,any>
function S6ElevatorProbeCensusScript.physics_population() end

---@return Vector2i
function S6ElevatorProbeCensusScript.moving_pieces() end

---@param e Object
---@return string
function S6ElevatorProbeCensusScript.end_kind(e) end

---@param subset Array<any>
---@return integer
function S6ElevatorProbeCensusScript.awake_pieces(subset) end

---@param subset Array<any>
---@return number
function S6ElevatorProbeCensusScript.max_stretch(subset) end

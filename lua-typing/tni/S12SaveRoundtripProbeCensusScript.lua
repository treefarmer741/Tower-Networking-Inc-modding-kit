---@meta _
-- Generated API for game version 0.13.4

---@class S12SaveRoundtripProbeCensusScript : RefCounted
---@field MOVING_SPEED number # Constant value: 2.0
---@field world Node
---@field cables Array<any>
---@field links Array<any>
---@field devices Array<any>
local S12SaveRoundtripProbeCensusScript = {}

function S12SaveRoundtripProbeCensusScript.refresh() end

---@return table<any,any>
function S12SaveRoundtripProbeCensusScript.count() end

---@return table<any,any>
function S12SaveRoundtripProbeCensusScript.physics_population() end

---@return Vector2i
function S12SaveRoundtripProbeCensusScript.moving_pieces() end

---@param e Object
---@return string
function S12SaveRoundtripProbeCensusScript.end_kind(e) end

---@param subset Array<any>
---@return integer
function S12SaveRoundtripProbeCensusScript.awake_pieces(subset) end

---@param subset Array<any>
---@return number
function S12SaveRoundtripProbeCensusScript.max_stretch(subset) end

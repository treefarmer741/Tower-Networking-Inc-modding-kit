---@meta _
-- Generated API for game version 0.13.4

---@class ProbeCensus : RefCounted
---@field MOVING_SPEED number # Constant value: 2.0
---@field world Node
---@field cables Array<any>
---@field links Array<any>
---@field devices Array<any>
local ProbeCensus = {}

function ProbeCensus.refresh() end

---@return table<any,any>
function ProbeCensus.count() end

---@return table<any,any>
function ProbeCensus.physics_population() end

---@return Vector2i
function ProbeCensus.moving_pieces() end

---@param e Object
---@return string
function ProbeCensus.end_kind(e) end

---@param subset Array<any>
---@return integer
function ProbeCensus.awake_pieces(subset) end

---@param subset Array<any>
---@return number
function ProbeCensus.max_stretch(subset) end

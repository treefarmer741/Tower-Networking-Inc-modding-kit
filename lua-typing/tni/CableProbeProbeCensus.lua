---@meta _
-- Generated API for game version 0.13.4

---@class CableProbeProbeCensus : RefCounted
---@field MOVING_SPEED number # Constant value: 2.0
---@field world Node
---@field cables Array<any>
---@field links Array<any>
---@field devices Array<any>
local CableProbeProbeCensus = {}

function CableProbeProbeCensus.refresh() end

---@return table<any,any>
function CableProbeProbeCensus.count() end

---@return table<any,any>
function CableProbeProbeCensus.physics_population() end

---@return Vector2i
function CableProbeProbeCensus.moving_pieces() end

---@param e Object
---@return string
function CableProbeProbeCensus.end_kind(e) end

---@param subset Array<any>
---@return integer
function CableProbeProbeCensus.awake_pieces(subset) end

---@param subset Array<any>
---@return number
function CableProbeProbeCensus.max_stretch(subset) end

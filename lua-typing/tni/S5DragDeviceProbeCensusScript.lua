---@meta _
-- Generated API for game version 0.13.4

---@class S5DragDeviceProbeCensusScript : RefCounted
---@field MOVING_SPEED number # Constant value: 2.0
---@field world Node
---@field cables Array<any>
---@field links Array<any>
---@field devices Array<any>
local S5DragDeviceProbeCensusScript = {}

function S5DragDeviceProbeCensusScript.refresh() end

---@return table<any,any>
function S5DragDeviceProbeCensusScript.count() end

---@return table<any,any>
function S5DragDeviceProbeCensusScript.physics_population() end

---@return Vector2i
function S5DragDeviceProbeCensusScript.moving_pieces() end

---@param e Object
---@return string
function S5DragDeviceProbeCensusScript.end_kind(e) end

---@param subset Array<any>
---@return integer
function S5DragDeviceProbeCensusScript.awake_pieces(subset) end

---@param subset Array<any>
---@return number
function S5DragDeviceProbeCensusScript.max_stretch(subset) end

---@meta _
-- Generated API for game version 0.9.1

---@class Recycler : Node2D
---@field objcount_lbl Label
---@field cashdisp_lbl Label
---@field lowz_sprite Sprite2D
---@field highz_sprite Sprite2D
---@field aplayer AnimationPlayer
---@field clickpoly Polygon2D
---@field cargo Array<Node2D>
---@field recycle_cashout_now integer
local Recycler = {}

---@param tcar Array<any>
function Recycler.update_trolley_devices(tcar) end

function Recycler.recycle_objects_in_cargo() end

---@return Object
function Recycler.debug_monitor_callback() end

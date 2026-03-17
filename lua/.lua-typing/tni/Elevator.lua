---@meta _
-- Generated API for game version 0.10.0

---@class Elevator : Area2D
---@field placer DevicePlacer
---@field label_floor_num integer
---@field delivery_period number
---@field cargo_count_display string
---@field delivery_backlog Array<Node2D>
---@field delivery_timer Timer
---@field floorbase integer
---@field animp AnimationPlayer
---@field audip AudioStreamPlayer2D
---@field dst_floor_idx integer
---@field has_dst_floor boolean
---@field cargo Array<Node2D>
local Elevator = {}

---@param _time_mult_delta number
function Elevator.time_mult_updated(_time_mult_delta) end

---@return Object
function Elevator.debug_monitor_callback() end

---@param dst_idx integer
function Elevator.instant_summon(dst_idx) end

---@param pd Array<Node2D>
function Elevator.add_delivery_backlog(pd) end

function Elevator.receive_delivery() end

function Elevator.retry_delivery_attempt() end

function Elevator.spawn_delivery_backlog() end

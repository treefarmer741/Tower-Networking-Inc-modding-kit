---@meta _
-- Generated API for game version 0.13.4

---@class S6ElevatorVerletRopeScript : RefCounted
---@field RopeLabelAnchor Object # Constant value: (res://scenes/components/cables/rope/rope_label_anchor.gd):<GDScript#-9223369670998812264>
---@field Manager Object # Constant value: (res://scenes/components/cables/rope/cable_rope_manager.gd):<GDScript#-9223369670730376806>
---@field SPACING number # Constant value: 75.0
---@field MIN_SEGMENTS integer # Constant value: 4
---@field ITERATIONS integer # Constant value: 6
---@field GRAVITY_SCALE number # Constant value: 0.5
---@field DAMPING number # Constant value: 0.9
---@field FLOOR_FRICTION number # Constant value: 0.5
---@field SLEEP_SPEED number # Constant value: 0.5
---@field SLEEP_TIME number # Constant value: 0.5
---@field WAKE_EPS number # Constant value: 2.0
---@field TELEPORT_FRACTION number # Constant value: 0.25
---@field TELEPORT_MIN number # Constant value: 150.0
---@field SUBFLOOR_TOP number # Constant value: 27.0
---@field WALL_HALF number # Constant value: 25.0
---@field DRAW_SUBDIV integer # Constant value: 4
---@field SHAPE_POINTS integer # Constant value: 64
---@field cable Cable
---@field points PackedVector2Array
---@field active boolean
local S6ElevatorVerletRopeScript = {}

---@return boolean
function S6ElevatorVerletRopeScript.uses_tether() end

---@return Object
function S6ElevatorVerletRopeScript.get_pieces() end

---@return boolean
function S6ElevatorVerletRopeScript.is_ready() end

function S6ElevatorVerletRopeScript.enter_tree() end

function S6ElevatorVerletRopeScript.ends_ready() end

function S6ElevatorVerletRopeScript.configure() end

function S6ElevatorVerletRopeScript.make() end

function S6ElevatorVerletRopeScript.after_make() end

function S6ElevatorVerletRopeScript.unmake() end

function S6ElevatorVerletRopeScript.on_end_picked() end

function S6ElevatorVerletRopeScript.tout_idle() end

function S6ElevatorVerletRopeScript.force_unidle() end

function S6ElevatorVerletRopeScript.elevator_hide() end

---@param pos_delta Vector2
function S6ElevatorVerletRopeScript.elevator_place(pos_delta) end

---@param _delta number
function S6ElevatorVerletRopeScript.process(_delta) end

---@return PackedVector2Array
function S6ElevatorVerletRopeScript.get_points() end

---@param end_ Object
---@return Node2D
function S6ElevatorVerletRopeScript.get_label_anchor(end_) end

---@return integer
function S6ElevatorVerletRopeScript.get_coil_segment_count() end

function S6ElevatorVerletRopeScript.wake() end

---@param end_ Object
function S6ElevatorVerletRopeScript.on_end_moved(end_) end

---@return boolean
function S6ElevatorVerletRopeScript.is_still() end

function S6ElevatorVerletRopeScript.bake() end

---@param dt number
function S6ElevatorVerletRopeScript.step(dt) end

function S6ElevatorVerletRopeScript.relayout() end

---@param pts PackedVector2Array
---@param xform Transform2D
---@return Array<any>
function S6ElevatorVerletRopeScript.pack_shape(pts, xform) end

---@param packed Array<any>
---@param xform Transform2D
function S6ElevatorVerletRopeScript.set_saved_shape(packed, xform) end

---@param canvas Cable
function S6ElevatorVerletRopeScript.draw(canvas) end

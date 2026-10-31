---@meta _
-- Generated API for game version 0.13.4

---@class VerletRope : RefCounted
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
local VerletRope = {}

---@return boolean
function VerletRope.uses_tether() end

---@return Object
function VerletRope.get_pieces() end

---@return boolean
function VerletRope.is_ready() end

function VerletRope.enter_tree() end

function VerletRope.ends_ready() end

function VerletRope.configure() end

function VerletRope.make() end

function VerletRope.after_make() end

function VerletRope.unmake() end

function VerletRope.on_end_picked() end

function VerletRope.tout_idle() end

function VerletRope.force_unidle() end

function VerletRope.elevator_hide() end

---@param pos_delta Vector2
function VerletRope.elevator_place(pos_delta) end

---@param _delta number
function VerletRope.process(_delta) end

---@return PackedVector2Array
function VerletRope.get_points() end

---@param end_ Object
---@return Node2D
function VerletRope.get_label_anchor(end_) end

---@return integer
function VerletRope.get_coil_segment_count() end

function VerletRope.wake() end

---@param end_ Object
function VerletRope.on_end_moved(end_) end

---@return boolean
function VerletRope.is_still() end

function VerletRope.bake() end

---@param dt number
function VerletRope.step(dt) end

function VerletRope.relayout() end

---@param pts PackedVector2Array
---@param xform Transform2D
---@return Array<any>
function VerletRope.pack_shape(pts, xform) end

---@param packed Array<any>
---@param xform Transform2D
function VerletRope.set_saved_shape(packed, xform) end

---@param canvas Cable
function VerletRope.draw(canvas) end

---@meta _
-- Generated API for game version 0.13.4

---@class S9KrakenVerletRopeScript : RefCounted
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
local S9KrakenVerletRopeScript = {}

---@return boolean
function S9KrakenVerletRopeScript.uses_tether() end

---@return Object
function S9KrakenVerletRopeScript.get_pieces() end

---@return boolean
function S9KrakenVerletRopeScript.is_ready() end

function S9KrakenVerletRopeScript.enter_tree() end

function S9KrakenVerletRopeScript.ends_ready() end

function S9KrakenVerletRopeScript.configure() end

function S9KrakenVerletRopeScript.make() end

function S9KrakenVerletRopeScript.after_make() end

function S9KrakenVerletRopeScript.unmake() end

function S9KrakenVerletRopeScript.on_end_picked() end

function S9KrakenVerletRopeScript.tout_idle() end

function S9KrakenVerletRopeScript.force_unidle() end

function S9KrakenVerletRopeScript.elevator_hide() end

---@param pos_delta Vector2
function S9KrakenVerletRopeScript.elevator_place(pos_delta) end

---@param _delta number
function S9KrakenVerletRopeScript.process(_delta) end

---@return PackedVector2Array
function S9KrakenVerletRopeScript.get_points() end

---@param end_ Object
---@return Node2D
function S9KrakenVerletRopeScript.get_label_anchor(end_) end

---@return integer
function S9KrakenVerletRopeScript.get_coil_segment_count() end

function S9KrakenVerletRopeScript.wake() end

---@param end_ Object
function S9KrakenVerletRopeScript.on_end_moved(end_) end

---@return boolean
function S9KrakenVerletRopeScript.is_still() end

function S9KrakenVerletRopeScript.bake() end

---@param dt number
function S9KrakenVerletRopeScript.step(dt) end

function S9KrakenVerletRopeScript.relayout() end

---@param pts PackedVector2Array
---@param xform Transform2D
---@return Array<any>
function S9KrakenVerletRopeScript.pack_shape(pts, xform) end

---@param packed Array<any>
---@param xform Transform2D
function S9KrakenVerletRopeScript.set_saved_shape(packed, xform) end

---@param canvas Cable
function S9KrakenVerletRopeScript.draw(canvas) end

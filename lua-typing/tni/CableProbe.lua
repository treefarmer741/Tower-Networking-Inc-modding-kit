---@meta _
-- Generated API for game version 0.13.4

---@class CableProbe : Node
---@field ProbeClock Object # Constant value: (res://probes/cables/lib/probe_clock.gd):<GDScript#-9223366169577021195>
---@field ProbeCensus Object # Constant value: (res://probes/cables/lib/probe_census.gd):<GDScript#-9223366169291808520>
---@field ProbeRig Object # Constant value: (res://probes/cables/lib/probe_rig.gd):<GDScript#-9223366169023373062>
---@field Ticker Object # Constant value: ():<GDScript#-9223366169761570572>
---@field args table<any,any>
---@field world GameWorld
---@field clock Node
---@field census RefCounted
---@field rig RefCounted
---@field out_dir string
---@field load_s number
---@field first_frame table<any,any>
---@field bare boolean
local CableProbe = {}
---@enum CableProbe.SCENARIOS
CableProbe.SCENARIOS = {
	["bare_physics"] = "res://probes/cables/scenarios/s0_bare_physics.gd",
	["idle_plugged"] = "res://probes/cables/scenarios/s1_idle_plugged.gd",
	["floor_loose"] = "res://probes/cables/scenarios/s2_floor_loose.gd",
	["tray_links"] = "res://probes/cables/scenarios/s3_tray_links.gd",
	["drag_cables"] = "res://probes/cables/scenarios/s4_drag_cables.gd",
	["drag_device"] = "res://probes/cables/scenarios/s5_drag_device.gd",
	["elevator"] = "res://probes/cables/scenarios/s6_elevator.gd",
	["delivery"] = "res://probes/cables/scenarios/s7_delivery.gd",
	["save_load"] = "res://probes/cables/scenarios/s8_save_load.gd",
	["kraken"] = "res://probes/cables/scenarios/s9_kraken.gd",
	["yank_parity"] = "res://probes/cables/scenarios/s10_yank_parity.gd",
	["dangle_parity"] = "res://probes/cables/scenarios/s11_dangle_parity.gd",
	["save_roundtrip"] = "res://probes/cables/scenarios/s12_save_roundtrip.gd",
	["plug_swing"] = "res://probes/cables/scenarios/s13_plug_swing.gd",
	["input_delay"] = "res://probes/cables/scenarios/s14_input_delay.gd",
}

---@param seconds number
function CableProbe.wait(seconds) end

---@param n integer
function CableProbe.wait_frames(n) end

---@param timeout number?  # Default = -1.0
---@return table<any,any>
function CableProbe.settle(timeout) end

---@param fields table<any,any>
---@param seconds number?  # Default = -1.0
---@return table<any,any>
function CableProbe.measure_point(fields, seconds) end

---@param fn (Callable|function)
---@return Node
function CableProbe.start_ticker(fn) end

---@param fields table<any,any>
---@param seconds number
---@return table<any,any>
function CableProbe.record_transient(fields, seconds) end

---@param fields table<any,any>
function CableProbe.measure_physics_attribution(fields) end

---@param shot_name string
function CableProbe.screenshot(shot_name) end

---@param row table<any,any>
function CableProbe.write_row(row) end

---@param row table<any,any>
---@return boolean
function CableProbe.too_slow(row) end

function CableProbe.unlock_frame_rate() end

---@param key string
---@param default number
---@return number
function CableProbe.arg_float(key, default) end

---@param key string
---@param default integer
---@return integer
function CableProbe.arg_int(key, default) end

---@param key string
---@param default Array<any>
---@return Array<any>
function CableProbe.int_list(key, default) end

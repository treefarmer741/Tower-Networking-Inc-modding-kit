---@meta _
-- Generated API for game version 0.13.1

---@class TestProgramStops : TestBase
---@field TRACE_LIMIT integer # Constant value: 4000
---@field events Array<any>
---@field trace Array<any>
---@field trace_pc_path string
---@field save_name string
---@field is_ready boolean
local TestProgramStops = {}

---@return table<any,any>
function TestProgramStops.arm() end

---@return table<any,any>
function TestProgramStops.disarm() end

---@return string
function TestProgramStops.get_report() end

---@return Array<any>
function TestProgramStops.get_events() end

---@return table<any,any>
function TestProgramStops.get_stop_summary() end

---@return string
function TestProgramStops.get_stops() end

---@return Array<any>
function TestProgramStops.vm_state() end

---@return Array<any>
function TestProgramStops.get_trace() end

---@return Array<any>
function TestProgramStops.get_charge_lowmarks() end

---@return Array<any>
function TestProgramStops.list_world() end

---@param sname string
---@return table<any,any>
function TestProgramStops.audit_save_vs_live(sname) end

---@param sname string
---@param key string
---@return table<any,any>
function TestProgramStops.read_saved_playopt(sname, key) end

---@param key string
---@return Object
function TestProgramStops.live_playopt(key) end

---@return Array<any>
function TestProgramStops.ingress_report() end

---@param pc_path string
---@param up_path string
---@param idx integer
---@return table<any,any>
function TestProgramStops.probe_stale_ingress(pc_path, up_path, idx) end

---@param v number
---@return number
function TestProgramStops.set_timescale(v) end

---@param v boolean
---@return boolean
function TestProgramStops.set_autostart(v) end

---@return integer
function TestProgramStops.break_mains() end

---@return integer
function TestProgramStops.close_mains() end

---@return Array<any>
function TestProgramStops.power_state() end

---@return table<any,any>
function TestProgramStops.snapshot_running() end

---@param before table<any,any>
---@return table<any,any>
function TestProgramStops.compare_running(before) end

---@return string
function TestProgramStops.save_now() end

---@return string
function TestProgramStops.latest_autosave() end

---@param name_ string
function TestProgramStops.load_save(name_) end

---@return integer
function TestProgramStops.start_everything() end

function TestProgramStops.begin_setup() end

function TestProgramStops.teardown() end

---@param cond boolean
---@param msg string
function TestProgramStops.check(cond, msg) end

---@return table<any,any>
function TestProgramStops.get_result_summary() end

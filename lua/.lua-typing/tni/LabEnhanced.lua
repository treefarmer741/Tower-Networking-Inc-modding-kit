---@meta _
-- Generated API for game version 0.9.1

---@class LabEnhanced : Node2D
---@field width number
---@field users Array<User>
---@field height number
---@field camera_entry Vector2
---@field object_entry Vector2
---@field fixture_outlet_serials Array<string>
---@field link_outlets Array<LinkOutlet>
---@field builder_weight integer
---@field display_name string
---@field wall_texture Texture2D
---@field end_wall_scn PackedScene
---@field disable_events_at_ready boolean
---@field spawn_limit integer
---@field will_not_spawn_before_day integer
---@field location_prerequisite_scn PackedScene
---@field description string
---@field surge_immunity boolean
---@field outage_immunity boolean
---@field network_outage_flag boolean
---@field network_outage_scheduled boolean
---@field is_datacenter boolean
---@field screenshot_texture Texture2D
---@field power_meter PowerMeter
---@field power_mains PowerController
---@field floorbase Floor
---@field elevator Elevator
---@field slot_index integer
---@field floor_num integer
---@field mp_spawn MultiplayerSpawner
---@field randlocpc Array<RandomLocationPiece>
---@field all_possible_users Array<any>
local LabEnhanced = {}

---@param gpoint Vector2
---@return Object
function LabEnhanced.is_valid_global_point(gpoint) end

---@param gpoint Vector2
---@return Object
function LabEnhanced.get_floor_idx_from_global_point(gpoint) end

---@return Object
function LabEnhanced.debug_monitor_callback() end

---@param newsock LinkOutlet
---@param sockpos Vector2
function LabEnhanced.add_link_outlet(newsock, sockpos) end

---@param payment_breakdown table<any,any>
---@param power_fee_waiver boolean?  # Default = false
---@param global_network_fee_mult number?  # Default = 1.0
function LabEnhanced.populate_bill_breakdown(payment_breakdown, power_fee_waiver, global_network_fee_mult) end

---@meta _
-- Generated API for game version 0.12.1

---@class DynamicLoadSimulator : Node
---@field MINUTES_IN_DAY integer # Constant value: 1440
---@field user_scenes_folder string
---@field lcu_outlet_scene PackedScene
---@field spawn_location Node
---@field outlet_hub LCUOutletHub
---@field spawn_start_position Vector2
---@field spawn_spacing number
---@field available_user_scenes Array<PackedScene>
---@field spawned_outlets Array<LCUOutlet>
---@field load_curve Array<Dictionary>
---@field last_trigger_minute integer
---@field curr_minod integer
local DynamicLoadSimulator = {}

---@param pos Vector2
---@return LCUOutlet
function DynamicLoadSimulator.spawn_outlet_with_user(pos) end

---@param start_day integer
---@param num_days integer
---@param initial_users integer
---@param max_users integer
---@return Array<Dictionary>
function DynamicLoadSimulator.generate_growth_curve(start_day, num_days, initial_users, max_users) end

---@param user_sfps Array<string>
function DynamicLoadSimulator.add_users_pack(user_sfps) end

---@param user_sfp string
---@param pos Vector2
---@return LCUOutlet
function DynamicLoadSimulator.spawn_outlet_with_specific_user(user_sfp, pos) end

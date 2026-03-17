---@meta _
-- Generated API for game version 0.10.0

---@class FloorBuilder : Node
---@field onboarding_controller OnboardingController
---@field build_options Array<any>
---@field build_events Array<any>
---@field disabled boolean
---@field skip_interval_builds boolean
---@field min_date integer
---@field max_date integer
---@field build_interval integer
---@field random_build_option_on_day_zero boolean
---@field weight_indices Array<integer>
---@field spawn_paths Array<any>
local FloorBuilder = {}

---@param floor_candidate Location
---@return boolean
function FloorBuilder.floor_requirements_satisfied(floor_candidate) end

---@param force_spawn boolean?  # Default = false
function FloorBuilder.execute_random_build_option(force_spawn) end

---@param sfp string
---@param force_spawn boolean?  # Default = false
function FloorBuilder.build_floor_with_sfp(sfp, force_spawn) end

---@param new_date integer
function FloorBuilder.trigger_date_elapsed(new_date) end

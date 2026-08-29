---@meta _
-- Generated API for game version 0.12.1

---@class UserBuilder : Node
---@field onboarding_controller UserOnboardingController
---@field build_options Array<UserBuildOptionItem>
---@field build_events Array<any>
---@field disabled boolean
---@field skip_interval_builds boolean
---@field min_date integer
---@field max_date integer
---@field build_interval integer
---@field random_build_option_on_day_zero boolean
---@field users_per_pack_min integer
---@field users_per_pack_max integer
---@field weight_indices Array<integer>
local UserBuilder = {}

---@param candid Object
---@param pending Array<any>?  # Default = <null>
---@return boolean
function UserBuilder.user_requirements_satisfied(candid, pending) end

---@param force_spawn boolean?  # Default = false
function UserBuilder.execute_random_build_option(force_spawn) end

---@param user_sfps Array<string>
---@param force_spawn boolean?  # Default = false
function UserBuilder.build_users_pack(user_sfps, force_spawn) end

---@param new_date integer
function UserBuilder.trigger_date_elapsed(new_date) end

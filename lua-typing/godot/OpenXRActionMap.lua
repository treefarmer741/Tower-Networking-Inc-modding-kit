---@meta _
-- Generated API for game version 0.10.0

---@class OpenXRActionMap : Resource
---@field action_sets OpenXRActionSet
---@field interaction_profiles OpenXRInteractionProfile
local OpenXRActionMap = {}

---@param action_sets Array<any>
function OpenXRActionMap.set_action_sets(action_sets) end

---@return Array<any>
function OpenXRActionMap.get_action_sets() end

---@return integer
function OpenXRActionMap.get_action_set_count() end

---@param name string
---@return OpenXRActionSet
function OpenXRActionMap.find_action_set(name) end

---@param idx integer
---@return OpenXRActionSet
function OpenXRActionMap.get_action_set(idx) end

---@param action_set OpenXRActionSet
function OpenXRActionMap.add_action_set(action_set) end

---@param action_set OpenXRActionSet
function OpenXRActionMap.remove_action_set(action_set) end

---@param interaction_profiles Array<any>
function OpenXRActionMap.set_interaction_profiles(interaction_profiles) end

---@return Array<any>
function OpenXRActionMap.get_interaction_profiles() end

---@return integer
function OpenXRActionMap.get_interaction_profile_count() end

---@param name string
---@return OpenXRInteractionProfile
function OpenXRActionMap.find_interaction_profile(name) end

---@param idx integer
---@return OpenXRInteractionProfile
function OpenXRActionMap.get_interaction_profile(idx) end

---@param interaction_profile OpenXRInteractionProfile
function OpenXRActionMap.add_interaction_profile(interaction_profile) end

---@param interaction_profile OpenXRInteractionProfile
function OpenXRActionMap.remove_interaction_profile(interaction_profile) end

function OpenXRActionMap.create_default_action_sets() end

---@meta _
-- Generated API for game version 0.9.1

---@class ElevatorUpgrade : Node
---@field cost integer
---@field wait_time_decrease_factor number
---@field submitted boolean
---@field locked boolean
---@field depends_on PropMod
---@field disallow_proposal_if_depends_submitted boolean
---@field icon_texture Texture2D
---@field can_be_proposed_beginning integer
---@field disabled_due_to_config_errors boolean
---@field weight integer
---@field proposed_on integer
---@field force_once_on_day integer
---@field can_be_proposed boolean
---@field is_active_proposal boolean
local ElevatorUpgrade = {}

function ElevatorUpgrade.apply_mod() end

function ElevatorUpgrade.activate_local_effects() end

---@return string
function ElevatorUpgrade.get_proposal_name() end

---@return string
function ElevatorUpgrade.get_lore() end

---@return string
function ElevatorUpgrade.get_description() end

---@return Object
function ElevatorUpgrade.test_adhoc_requirements() end

function ElevatorUpgrade.submit_and_apply() end

function ElevatorUpgrade.update_state() end

function ElevatorUpgrade.apply_mod() end

function ElevatorUpgrade.activate_local_effects() end

---@return string
function ElevatorUpgrade.get_description() end

---@return string
function ElevatorUpgrade.get_proposal_name() end

---@return string
function ElevatorUpgrade.get_lore() end

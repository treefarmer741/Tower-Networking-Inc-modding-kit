---@meta _
-- Generated API for game version 0.9.1

---@class RipResearch : Node
---@field techv string # Constant value: route_discovery_v1
---@field cost integer
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
local RipResearch = {}

function RipResearch.apply_mod() end

function RipResearch.activate_local_effects() end

---@return string
function RipResearch.get_proposal_name() end

---@return string
function RipResearch.get_lore() end

---@return string
function RipResearch.get_description() end

---@return Object
function RipResearch.test_adhoc_requirements() end

---@return Object
function RipResearch.test_adhoc_requirements() end

function RipResearch.submit_and_apply() end

function RipResearch.update_state() end

function RipResearch.apply_mod() end

function RipResearch.activate_local_effects() end

---@return string
function RipResearch.get_description() end

---@return string
function RipResearch.get_proposal_name() end

---@return string
function RipResearch.get_lore() end

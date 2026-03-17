---@meta _
-- Generated API for game version 0.9.1

---@class HaResearch : Node
---@field techv string # Constant value: high_availability_v1
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
local HaResearch = {}

function HaResearch.apply_mod() end

function HaResearch.activate_local_effects() end

---@return string
function HaResearch.get_proposal_name() end

---@return string
function HaResearch.get_lore() end

---@return string
function HaResearch.get_description() end

---@return Object
function HaResearch.test_adhoc_requirements() end

---@return Object
function HaResearch.test_adhoc_requirements() end

function HaResearch.submit_and_apply() end

function HaResearch.update_state() end

function HaResearch.apply_mod() end

function HaResearch.activate_local_effects() end

---@return string
function HaResearch.get_description() end

---@return string
function HaResearch.get_proposal_name() end

---@return string
function HaResearch.get_lore() end

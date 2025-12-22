---@meta _
-- Generated API for game version 0.9.1

---@class TenaboltFusionPhaseTwo : Node
---@field cost integer # Constant value: 2000
---@field reduction number
---@field prob_reduction number
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
local TenaboltFusionPhaseTwo = {}

function TenaboltFusionPhaseTwo.apply_mod() end

function TenaboltFusionPhaseTwo.activate_local_effects() end

---@return string
function TenaboltFusionPhaseTwo.get_proposal_name() end

---@return string
function TenaboltFusionPhaseTwo.get_lore() end

---@return string
function TenaboltFusionPhaseTwo.get_description() end

---@return Object
function TenaboltFusionPhaseTwo.test_adhoc_requirements() end

---@return Object
function TenaboltFusionPhaseTwo.test_adhoc_requirements() end

function TenaboltFusionPhaseTwo.submit_and_apply() end

function TenaboltFusionPhaseTwo.update_state() end

function TenaboltFusionPhaseTwo.apply_mod() end

function TenaboltFusionPhaseTwo.activate_local_effects() end

---@return string
function TenaboltFusionPhaseTwo.get_description() end

---@return string
function TenaboltFusionPhaseTwo.get_proposal_name() end

---@return string
function TenaboltFusionPhaseTwo.get_lore() end

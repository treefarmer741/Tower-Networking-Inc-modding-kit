---@meta _
-- Generated API for game version 0.9.1

---@class TenaboltFusionPhaseOne : Node
---@field cost integer # Constant value: 1000
---@field reduction number
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
local TenaboltFusionPhaseOne = {}

function TenaboltFusionPhaseOne.apply_mod() end

function TenaboltFusionPhaseOne.activate_local_effects() end

---@return string
function TenaboltFusionPhaseOne.get_proposal_name() end

---@return string
function TenaboltFusionPhaseOne.get_lore() end

---@return string
function TenaboltFusionPhaseOne.get_description() end

---@return Object
function TenaboltFusionPhaseOne.test_adhoc_requirements() end

---@return Object
function TenaboltFusionPhaseOne.test_adhoc_requirements() end

function TenaboltFusionPhaseOne.submit_and_apply() end

function TenaboltFusionPhaseOne.update_state() end

function TenaboltFusionPhaseOne.apply_mod() end

function TenaboltFusionPhaseOne.activate_local_effects() end

---@return string
function TenaboltFusionPhaseOne.get_description() end

---@return string
function TenaboltFusionPhaseOne.get_proposal_name() end

---@return string
function TenaboltFusionPhaseOne.get_lore() end

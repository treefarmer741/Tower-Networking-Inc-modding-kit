---@meta _
-- Generated API for game version 0.10.0

---@class PropMod : Node
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
local PropMod = {}

---@return Object
function PropMod.test_adhoc_requirements() end

function PropMod.submit_and_apply() end

function PropMod.update_state() end

function PropMod.apply_mod() end

function PropMod.activate_local_effects() end

---@return string
function PropMod.get_description() end

---@return string
function PropMod.get_proposal_name() end

---@return string
function PropMod.get_lore() end

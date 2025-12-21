---@meta _
-- Generated API for game version 0.9.1

---@class OutageSurgePropMod : Node
---@field surge_increase number
---@field outage_increase number
---@field stamp_duty integer
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
local OutageSurgePropMod = {}

function OutageSurgePropMod.apply_mod() end

function OutageSurgePropMod.activate_local_effects() end

---@return string
function OutageSurgePropMod.get_description() end

---@return Object
function OutageSurgePropMod.test_adhoc_requirements() end

function OutageSurgePropMod.submit_and_apply() end

function OutageSurgePropMod.update_state() end

function OutageSurgePropMod.apply_mod() end

function OutageSurgePropMod.activate_local_effects() end

---@return string
function OutageSurgePropMod.get_description() end

---@return string
function OutageSurgePropMod.get_proposal_name() end

---@return string
function OutageSurgePropMod.get_lore() end

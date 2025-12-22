---@meta _
-- Generated API for game version 0.9.1

---@class UndervoltageDirective : Node
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
local UndervoltageDirective = {}

---@return string
function UndervoltageDirective.get_proposal_name() end

---@return string
function UndervoltageDirective.get_lore() end

function UndervoltageDirective.apply_mod() end

function UndervoltageDirective.activate_local_effects() end

---@return string
function UndervoltageDirective.get_description() end

---@return Object
function UndervoltageDirective.test_adhoc_requirements() end

function UndervoltageDirective.submit_and_apply() end

function UndervoltageDirective.update_state() end

function UndervoltageDirective.apply_mod() end

function UndervoltageDirective.activate_local_effects() end

---@return string
function UndervoltageDirective.get_description() end

---@return string
function UndervoltageDirective.get_proposal_name() end

---@return string
function UndervoltageDirective.get_lore() end

---@meta _
-- Generated API for game version 0.9.1

---@class SupportCablersUnionDiscounts : Node
---@field cost integer
---@field merchant_scn PackedScene
---@field new_price_multiplier number
---@field new_price_add_constant integer
---@field new_warranty_multiplier number
---@field new_warranty_add_constant integer
---@field max_stock_change integer
---@field listing_whitelist Array<any>
---@field listing_blacklist Array<any>
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
local SupportCablersUnionDiscounts = {}

function SupportCablersUnionDiscounts.apply_mod() end

---@return string
function SupportCablersUnionDiscounts.get_proposal_name() end

---@return string
function SupportCablersUnionDiscounts.get_lore() end

---@return string
function SupportCablersUnionDiscounts.get_description() end

function SupportCablersUnionDiscounts.activate_local_effects() end

---@return Object
function SupportCablersUnionDiscounts.test_adhoc_requirements() end

function SupportCablersUnionDiscounts.submit_and_apply() end

function SupportCablersUnionDiscounts.update_state() end

function SupportCablersUnionDiscounts.apply_mod() end

function SupportCablersUnionDiscounts.activate_local_effects() end

---@return string
function SupportCablersUnionDiscounts.get_description() end

---@return string
function SupportCablersUnionDiscounts.get_proposal_name() end

---@return string
function SupportCablersUnionDiscounts.get_lore() end

---@meta _
-- Generated API for game version 0.9.1

---@class MerchantListingMod : Node
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
local MerchantListingMod = {}

function MerchantListingMod.activate_local_effects() end

---@return Object
function MerchantListingMod.test_adhoc_requirements() end

function MerchantListingMod.submit_and_apply() end

function MerchantListingMod.update_state() end

function MerchantListingMod.apply_mod() end

function MerchantListingMod.activate_local_effects() end

---@return string
function MerchantListingMod.get_description() end

---@return string
function MerchantListingMod.get_proposal_name() end

---@return string
function MerchantListingMod.get_lore() end

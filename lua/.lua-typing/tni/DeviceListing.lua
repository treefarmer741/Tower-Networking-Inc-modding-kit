---@meta _
-- Generated API for game version 0.9.1

---@class DeviceListing : Node
---@field device_scn PackedScene
---@field listed_on_day integer
---@field delisted_on_day integer
---@field warranty_period integer
---@field allowed_variant DeviceListing.VariantType
---@field listing_title string
---@field description string
---@field price integer
---@field listing_image Texture2D
---@field device_catalog_vptexture ViewportTexture
---@field previous_availability boolean
---@field available boolean
---@field max_stock_override integer
---@field max_stock integer
---@field stock integer
---@field sample_ref Object
---@field merchant DeviceMerchant
---@field CABLE_COLOR_MODULATE_VARIANTS table<any,any>
local DeviceListing = {}
---@enum DeviceListing.VariantType
DeviceListing.VariantType = {
	["NO_VARIANT"] = 0,
	["CABLE_COLOR_MODULATION_VARIANT"] = 1,
}

---@param eval_day Object
function DeviceListing.update_availability(eval_day) end

---@param n integer
---@return Array<Node2D>
function DeviceListing.destock(n) end

---@param n integer
function DeviceListing.restock(n) end

---@param items Array<Node2D>
---@param variantkey string
function DeviceListing.apply_variants(items, variantkey) end

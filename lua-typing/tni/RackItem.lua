---@meta _
-- Generated API for game version 0.13.4

---@class RackItem : PanelContainer
---@field rack_scn PackedScene
---@field price integer
---@field category res://scenes/screen/apps/barracks/rack_item.gd.Category
---@field price_lb Label
---@field txtrect TextureRect
---@field button Button
local RackItem = {}
---@enum RackItem.Category
RackItem.Category = {
	["RACK_500R"] = 0,
	["RACK_630R"] = 1,
	["RACK_930R"] = 2,
	["MISC"] = 3,
}

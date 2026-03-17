---@meta _
-- Generated API for game version 0.9.1

---@class Dmarket : Container
---@field merchant_list_item_scene PackedScene
---@field device_listing_cart_item_scene PackedScene
---@field current_merchant DeviceMerchant
---@field current_checkout table<any,any>
---@field exit_button Button
---@field mrch_button Button
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Dmarket = {}

function Dmarket.launch() end

function Dmarket.display_merchants() end

function Dmarket.display_listings() end

function Dmarket.renew_cart_state() end

function Dmarket.show_final_screen() end

---@param msg Object
function Dmarket.show_pingback(msg) end

function Dmarket.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Dmarket.toast(msg, duration) end

---@return Object
function Dmarket.get_main_pane() end

function Dmarket.minimize() end

function Dmarket.launch() end

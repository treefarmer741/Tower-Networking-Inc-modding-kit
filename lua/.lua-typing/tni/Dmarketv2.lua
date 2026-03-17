---@meta _
-- Generated API for game version 0.9.1

---@class Dmarketv2 : Container
---@field lstv2scn PackedScene
---@field togsrchbtn Button
---@field searchdtype OptionButton
---@field searchctn Container
---@field mrchtype OptionButton
---@field chkoctl Container
---@field lstctn Container
---@field keyworde LineEdit
---@field merchinfopan Container
---@field geneinfopan Container
---@field final_screen Container
---@field delivery_floor_sel ItemList
---@field fwd_button Button
---@field clr_button Button
---@field current_local_cart table<any,any>
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Dmarketv2 = {}

function Dmarketv2.launch() end

function Dmarketv2.minimize() end

function Dmarketv2.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Dmarketv2.toast(msg, duration) end

---@return Object
function Dmarketv2.get_main_pane() end

function Dmarketv2.minimize() end

function Dmarketv2.launch() end

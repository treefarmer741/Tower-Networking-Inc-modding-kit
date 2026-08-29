---@meta _
-- Generated API for game version 0.12.1

---@class Networkadmin : ScreenApp
---@field proposal_item_scene PackedScene
---@field tab_title_item_scene PackedScene
---@field user_queue_scene PackedScene
---@field proposal_directory_item_scene PackedScene
---@field tab_container TabContainer
---@field proposals_container Container
---@field proposals_history_container Container
---@field user_onboarding_container Container
---@field directory_container Container
---@field fbind_tr TextureRect
---@field prind_tr TextureRect
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Networkadmin = {}

function Networkadmin.launch() end

function Networkadmin.minimize() end

function Networkadmin.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Networkadmin.toast(msg, duration) end

---@return Object
function Networkadmin.get_main_pane() end

function Networkadmin.minimize() end

function Networkadmin.launch() end

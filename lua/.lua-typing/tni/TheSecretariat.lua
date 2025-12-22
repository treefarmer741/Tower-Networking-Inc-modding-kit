---@meta _
-- Generated API for game version 0.9.1

---@class TheSecretariat : Container
---@field proposal_item_scene PackedScene
---@field tab_title_item_scene PackedScene
---@field floor_queue_scene PackedScene
---@field tab_container TabContainer
---@field proposals_container Container
---@field proposals_history_container Container
---@field floor_onboarding_container Container
---@field fbind_tr TextureRect
---@field prind_tr TextureRect
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local TheSecretariat = {}

function TheSecretariat.launch() end

function TheSecretariat.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function TheSecretariat.toast(msg, duration) end

---@return Object
function TheSecretariat.get_main_pane() end

function TheSecretariat.minimize() end

function TheSecretariat.launch() end

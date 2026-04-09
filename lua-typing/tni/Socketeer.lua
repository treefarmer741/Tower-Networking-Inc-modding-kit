---@meta _
-- Generated API for game version 0.10.11

---@class Socketeer : ScreenApp
---@field placeable_outlets Array<any>
---@field socketsel OptionButton
---@field cfmbutton Button
---@field placebutton Button
---@field sviewport SubViewport
---@field cfmrmbutton Button
---@field curr_ghost FixtureOutlet
---@field placed_ghost FixtureOutlet
---@field rm_target FixtureOutlet
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Socketeer = {}

function Socketeer.launch() end

function Socketeer.minimize() end

---@param sockind integer
---@param sockpos Vector2
function Socketeer.make_socket(sockind, sockpos) end

---@param sockpath string
function Socketeer.remove_socket(sockpath) end

function Socketeer.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Socketeer.toast(msg, duration) end

---@return Object
function Socketeer.get_main_pane() end

function Socketeer.minimize() end

function Socketeer.launch() end

---@meta _
-- Generated API for game version 0.9.1

---@class Camera : Container
---@field main_page Container
---@field current_scn Object
---@field gallery_container Object
---@field upload_button Object
---@field timer Object
---@field taken_pic Object
---@field jpgbuff Object
---@field taken_by_player boolean
---@field encoded_screenshots Object
---@field response_type Object
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local Camera = {}

---@return Object
function Camera.capture_right_portion() end

function Camera.hide_all() end

function Camera.launch() end

function Camera.minimize() end

function Camera.submit_screenshots() end

function Camera.display_camera_viewport() end

function Camera.store_latest_pic_in_gallery() end

function Camera.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function Camera.toast(msg, duration) end

---@return Object
function Camera.get_main_pane() end

function Camera.minimize() end

function Camera.launch() end

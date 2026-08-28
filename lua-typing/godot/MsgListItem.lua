---@meta _
-- Generated API for game version 0.12.1

---@class MsgListItem : Container
---@field msg GameMessage
---@field is_read boolean
---@field labels table<any,any>
---@field msg_label_map table<any,any>
---@field read_text Texture2D
---@field unread_text Texture2D
local MsgListItem = {}

---@param checked boolean
function MsgListItem.set_checkbox(checked) end

---@return boolean
function MsgListItem.is_checkbox_checked() end

function MsgListItem.refresh_badges() end

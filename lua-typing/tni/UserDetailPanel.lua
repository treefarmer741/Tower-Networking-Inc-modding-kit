---@meta _
-- Generated API for game version 0.13.1

---@class UserDetailPanel : VBoxContainer
---@field user User
---@field user_behavior_list_item_scene PackedScene
---@field user_hosting_list_item_scene PackedScene
---@field user_visitor_list_item_scene PackedScene
---@field sla_lbl Label
---@field userid_lbl Label
---@field activity_lbl Label
---@field msgbox RichTextLabel
---@field usedescript RichTextLabel
---@field icon_texture Object
---@field bwcon Label
---@field nwal Label
---@field dnsl RichTextLabel
---@field dhcpml Label
---@field gracel Label
---@field satl Label
---@field lwstl Label
---@field awstl Label
---@field pymtl Label
---@field pytdl Label
---@field hwadl Label
---@field fllbl Label
---@field rcloopd Container
local UserDetailPanel = {}

---@param m string
---@return string
function UserDetailPanel.colorize_surveyor_msg(m) end

---@param msgs Array<any>
---@return string
function UserDetailPanel.colorize_surveyor_lines(msgs) end

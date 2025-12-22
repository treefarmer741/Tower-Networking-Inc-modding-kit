---@meta _
-- Generated API for game version 0.9.1

---@class VerticalLinkviz : ScrollContainer
---@field header_string string
---@field header_element PackedScene
---@field column_element PackedScene
---@field line_width number
---@field link_text_font_size integer
---@field root_ctn VBoxContainer
local VerticalLinkviz = {}

---@param link_data Array<any>
---@return table<any,any>
function VerticalLinkviz.set_link_data(link_data) end

function VerticalLinkviz.make_link_displays() end

function VerticalLinkviz.refresh() end

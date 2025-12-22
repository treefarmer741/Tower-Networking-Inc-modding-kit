---@meta _
-- Generated API for game version 0.9.1

---@class Downloader : Window
---@field http_cmake HTTPRequest
---@field http_zig HTTPRequest
---@field http_ninja HTTPRequest
---@field cmake_status RichTextLabel
---@field make_status RichTextLabel
---@field git_status RichTextLabel
---@field zig_status RichTextLabel
---@field os_tab_container TabContainer
---@field status Object
local Downloader = {}

---@param path string
---@param dest string
function Downloader.extract_all_from_zip(path, dest) end

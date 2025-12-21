---@meta _
-- Generated API for game version 0.9.1

---@class CodeHighlighter : SyntaxHighlighter
---@field number_color Color
---@field symbol_color Color
---@field function_color Color
---@field member_variable_color Color
---@field keyword_colors table<any,any>
---@field member_keyword_colors table<any,any>
---@field color_regions table<any,any>
local CodeHighlighter = {}

---@param keyword string
---@param color Color
function CodeHighlighter.add_keyword_color(keyword, color) end

---@param keyword string
function CodeHighlighter.remove_keyword_color(keyword) end

---@param keyword string
---@return boolean
function CodeHighlighter.has_keyword_color(keyword) end

---@param keyword string
---@return Color
function CodeHighlighter.get_keyword_color(keyword) end

---@param keywords table<any,any>
function CodeHighlighter.set_keyword_colors(keywords) end

function CodeHighlighter.clear_keyword_colors() end

---@return table<any,any>
function CodeHighlighter.get_keyword_colors() end

---@param member_keyword string
---@param color Color
function CodeHighlighter.add_member_keyword_color(member_keyword, color) end

---@param member_keyword string
function CodeHighlighter.remove_member_keyword_color(member_keyword) end

---@param member_keyword string
---@return boolean
function CodeHighlighter.has_member_keyword_color(member_keyword) end

---@param member_keyword string
---@return Color
function CodeHighlighter.get_member_keyword_color(member_keyword) end

---@param member_keyword table<any,any>
function CodeHighlighter.set_member_keyword_colors(member_keyword) end

function CodeHighlighter.clear_member_keyword_colors() end

---@return table<any,any>
function CodeHighlighter.get_member_keyword_colors() end

---@param start_key string
---@param end_key string
---@param color Color
---@param line_only boolean?  # Default = false
function CodeHighlighter.add_color_region(start_key, end_key, color, line_only) end

---@param start_key string
function CodeHighlighter.remove_color_region(start_key) end

---@param start_key string
---@return boolean
function CodeHighlighter.has_color_region(start_key) end

---@param color_regions table<any,any>
function CodeHighlighter.set_color_regions(color_regions) end

function CodeHighlighter.clear_color_regions() end

---@return table<any,any>
function CodeHighlighter.get_color_regions() end

---@param color Color
function CodeHighlighter.set_function_color(color) end

---@return Color
function CodeHighlighter.get_function_color() end

---@param color Color
function CodeHighlighter.set_number_color(color) end

---@return Color
function CodeHighlighter.get_number_color() end

---@param color Color
function CodeHighlighter.set_symbol_color(color) end

---@return Color
function CodeHighlighter.get_symbol_color() end

---@param color Color
function CodeHighlighter.set_member_variable_color(color) end

---@return Color
function CodeHighlighter.get_member_variable_color() end

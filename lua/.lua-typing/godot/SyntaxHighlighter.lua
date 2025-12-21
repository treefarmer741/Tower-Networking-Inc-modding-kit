---@meta _
-- Generated API for game version 0.9.1

---@class SyntaxHighlighter : Resource
local SyntaxHighlighter = {}

---@param line integer
---@return table<any,any>
function SyntaxHighlighter.get_line_syntax_highlighting(line) end

function SyntaxHighlighter.update_cache() end

function SyntaxHighlighter.clear_highlighting_cache() end

---@return TextEdit
function SyntaxHighlighter.get_text_edit() end

---@meta _
-- Generated API for game version 0.12.1

---@class SemVerSemVerParsing : RefCounted
---@field raw string
---@field pos integer
local SemVerSemVerParsing = {}

---@return string
function SemVerSemVerParsing.get_remaining() end

---@param count integer
function SemVerSemVerParsing.advance(count) end

---@return integer
function SemVerSemVerParsing.consume_whitespace() end

---@param s string
---@return boolean
function SemVerSemVerParsing.peek_token(s) end

---@param s string
---@return boolean
function SemVerSemVerParsing.consume_token(s) end

---@param state RefCounted
---@param default integer?  # Default = -1
---@return RefCounted
function SemVerSemVerParsing.parse_version(state, default) end

---@param state RefCounted
---@return RefCounted
function SemVerSemVerParsing.parse_range(state) end

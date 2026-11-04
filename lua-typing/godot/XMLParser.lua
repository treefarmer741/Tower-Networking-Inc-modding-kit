---@meta _
-- Generated API for game version 0.10.0

---@class XMLParser : RefCounted
local XMLParser = {}

---@return Error
function XMLParser.read() end

---@return XMLParser.NodeType
function XMLParser.get_node_type() end

---@return string
function XMLParser.get_node_name() end

---@return string
function XMLParser.get_node_data() end

---@return integer
function XMLParser.get_node_offset() end

---@return integer
function XMLParser.get_attribute_count() end

---@param idx integer
---@return string
function XMLParser.get_attribute_name(idx) end

---@param idx integer
---@return string
function XMLParser.get_attribute_value(idx) end

---@param name string
---@return boolean
function XMLParser.has_attribute(name) end

---@param name string
---@return string
function XMLParser.get_named_attribute_value(name) end

---@param name string
---@return string
function XMLParser.get_named_attribute_value_safe(name) end

---@return boolean
function XMLParser.is_empty() end

---@return integer
function XMLParser.get_current_line() end

function XMLParser.skip_section() end

---@param position integer
---@return Error
function XMLParser.seek(position) end

---@param file string
---@return Error
function XMLParser.open(file) end

---@param buffer PackedByteArray
---@return Error
function XMLParser.open_buffer(buffer) end

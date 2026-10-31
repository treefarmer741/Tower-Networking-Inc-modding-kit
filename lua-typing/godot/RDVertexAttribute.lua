---@meta _
-- Generated API for game version 0.10.0

---@class RDVertexAttribute : RefCounted
---@field location integer
---@field offset integer
---@field format integer
---@field stride integer
---@field frequency integer
local RDVertexAttribute = {}

---@param p_member integer
function RDVertexAttribute.set_location(p_member) end

---@return integer
function RDVertexAttribute.get_location() end

---@param p_member integer
function RDVertexAttribute.set_offset(p_member) end

---@return integer
function RDVertexAttribute.get_offset() end

---@param p_member RenderingDevice.DataFormat
function RDVertexAttribute.set_format(p_member) end

---@return RenderingDevice.DataFormat
function RDVertexAttribute.get_format() end

---@param p_member integer
function RDVertexAttribute.set_stride(p_member) end

---@return integer
function RDVertexAttribute.get_stride() end

---@param p_member RenderingDevice.VertexFrequency
function RDVertexAttribute.set_frequency(p_member) end

---@return RenderingDevice.VertexFrequency
function RDVertexAttribute.get_frequency() end

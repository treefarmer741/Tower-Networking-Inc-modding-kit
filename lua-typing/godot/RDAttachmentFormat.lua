---@meta _
-- Generated API for game version 0.10.0

---@class RDAttachmentFormat : RefCounted
---@field format integer
---@field samples integer
---@field usage_flags integer
local RDAttachmentFormat = {}

---@param p_member RenderingDevice.DataFormat
function RDAttachmentFormat.set_format(p_member) end

---@return RenderingDevice.DataFormat
function RDAttachmentFormat.get_format() end

---@param p_member RenderingDevice.TextureSamples
function RDAttachmentFormat.set_samples(p_member) end

---@return RenderingDevice.TextureSamples
function RDAttachmentFormat.get_samples() end

---@param p_member integer
function RDAttachmentFormat.set_usage_flags(p_member) end

---@return integer
function RDAttachmentFormat.get_usage_flags() end

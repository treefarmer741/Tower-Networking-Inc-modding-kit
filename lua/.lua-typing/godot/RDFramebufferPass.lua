---@meta _
-- Generated API for game version 0.9.1

---@class RDFramebufferPass : RefCounted
---@field color_attachments PackedInt32Array
---@field input_attachments PackedInt32Array
---@field resolve_attachments PackedInt32Array
---@field preserve_attachments PackedInt32Array
---@field depth_attachment integer
local RDFramebufferPass = {}

---@param p_member PackedInt32Array
function RDFramebufferPass.set_color_attachments(p_member) end

---@return PackedInt32Array
function RDFramebufferPass.get_color_attachments() end

---@param p_member PackedInt32Array
function RDFramebufferPass.set_input_attachments(p_member) end

---@return PackedInt32Array
function RDFramebufferPass.get_input_attachments() end

---@param p_member PackedInt32Array
function RDFramebufferPass.set_resolve_attachments(p_member) end

---@return PackedInt32Array
function RDFramebufferPass.get_resolve_attachments() end

---@param p_member PackedInt32Array
function RDFramebufferPass.set_preserve_attachments(p_member) end

---@return PackedInt32Array
function RDFramebufferPass.get_preserve_attachments() end

---@param p_member integer
function RDFramebufferPass.set_depth_attachment(p_member) end

---@return integer
function RDFramebufferPass.get_depth_attachment() end

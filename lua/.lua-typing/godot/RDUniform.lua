---@meta _
-- Generated API for game version 0.9.1

---@class RDUniform : RefCounted
---@field uniform_type integer
---@field binding integer
local RDUniform = {}

---@param p_member RenderingDevice.UniformType
function RDUniform.set_uniform_type(p_member) end

---@return RenderingDevice.UniformType
function RDUniform.get_uniform_type() end

---@param p_member integer
function RDUniform.set_binding(p_member) end

---@return integer
function RDUniform.get_binding() end

---@param id RID
function RDUniform.add_id(id) end

function RDUniform.clear_ids() end

---@return Array<RID>
function RDUniform.get_ids() end

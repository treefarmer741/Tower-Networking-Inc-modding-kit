---@meta _
-- Generated API for game version 0.10.0

---@class Material : Resource
---@field render_priority integer
---@field next_pass Material
local Material = {}

---@param next_pass Material
function Material.set_next_pass(next_pass) end

---@return Material
function Material.get_next_pass() end

---@param priority integer
function Material.set_render_priority(priority) end

---@return integer
function Material.get_render_priority() end

function Material.inspect_native_shader_code() end

---@return Resource
function Material.create_placeholder() end

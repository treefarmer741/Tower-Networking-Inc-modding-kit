---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeGroupBase : VisualShaderNodeResizableBase
local VisualShaderNodeGroupBase = {}

---@param inputs string
function VisualShaderNodeGroupBase.set_inputs(inputs) end

---@return string
function VisualShaderNodeGroupBase.get_inputs() end

---@param outputs string
function VisualShaderNodeGroupBase.set_outputs(outputs) end

---@return string
function VisualShaderNodeGroupBase.get_outputs() end

---@param name string
---@return boolean
function VisualShaderNodeGroupBase.is_valid_port_name(name) end

---@param id integer
---@param type integer
---@param name string
function VisualShaderNodeGroupBase.add_input_port(id, type, name) end

---@param id integer
function VisualShaderNodeGroupBase.remove_input_port(id) end

---@return integer
function VisualShaderNodeGroupBase.get_input_port_count() end

---@param id integer
---@return boolean
function VisualShaderNodeGroupBase.has_input_port(id) end

function VisualShaderNodeGroupBase.clear_input_ports() end

---@param id integer
---@param type integer
---@param name string
function VisualShaderNodeGroupBase.add_output_port(id, type, name) end

---@param id integer
function VisualShaderNodeGroupBase.remove_output_port(id) end

---@return integer
function VisualShaderNodeGroupBase.get_output_port_count() end

---@param id integer
---@return boolean
function VisualShaderNodeGroupBase.has_output_port(id) end

function VisualShaderNodeGroupBase.clear_output_ports() end

---@param id integer
---@param name string
function VisualShaderNodeGroupBase.set_input_port_name(id, name) end

---@param id integer
---@param type integer
function VisualShaderNodeGroupBase.set_input_port_type(id, type) end

---@param id integer
---@param name string
function VisualShaderNodeGroupBase.set_output_port_name(id, name) end

---@param id integer
---@param type integer
function VisualShaderNodeGroupBase.set_output_port_type(id, type) end

---@return integer
function VisualShaderNodeGroupBase.get_free_input_port_id() end

---@return integer
function VisualShaderNodeGroupBase.get_free_output_port_id() end

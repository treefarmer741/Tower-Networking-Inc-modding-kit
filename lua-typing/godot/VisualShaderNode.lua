---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNode : Resource
---@field output_port_for_preview integer
---@field default_input_values Array<any>
---@field expanded_output_ports Array<any>
---@field linked_parent_graph_frame integer
local VisualShaderNode = {}

---@param type VisualShaderNode.PortType
---@return integer
function VisualShaderNode.get_default_input_port(type) end

---@param port integer
function VisualShaderNode.set_output_port_for_preview(port) end

---@return integer
function VisualShaderNode.get_output_port_for_preview() end

---@param port integer
---@param value Object
---@param prev_value Object?  # Default = <null>
function VisualShaderNode.set_input_port_default_value(port, value, prev_value) end

---@param port integer
---@return Object
function VisualShaderNode.get_input_port_default_value(port) end

---@param port integer
function VisualShaderNode.remove_input_port_default_value(port) end

function VisualShaderNode.clear_default_input_values() end

---@param values Array<any>
function VisualShaderNode.set_default_input_values(values) end

---@return Array<any>
function VisualShaderNode.get_default_input_values() end

---@param frame integer
function VisualShaderNode.set_frame(frame) end

---@return integer
function VisualShaderNode.get_frame() end

---@meta _
-- Generated API for game version 0.9.1

---@class VisualShader : Shader
---@field graph_offset Vector2
local VisualShader = {}

---@param mode Shader.Mode
function VisualShader.set_mode(mode) end

---@param type VisualShader.Type
---@param node VisualShaderNode
---@param position Vector2
---@param id integer
function VisualShader.add_node(type, node, position, id) end

---@param type VisualShader.Type
---@param id integer
---@return VisualShaderNode
function VisualShader.get_node(type, id) end

---@param type VisualShader.Type
---@param id integer
---@param position Vector2
function VisualShader.set_node_position(type, id, position) end

---@param type VisualShader.Type
---@param id integer
---@return Vector2
function VisualShader.get_node_position(type, id) end

---@param type VisualShader.Type
---@return PackedInt32Array
function VisualShader.get_node_list(type) end

---@param type VisualShader.Type
---@return integer
function VisualShader.get_valid_node_id(type) end

---@param type VisualShader.Type
---@param id integer
function VisualShader.remove_node(type, id) end

---@param type VisualShader.Type
---@param id integer
---@param new_class string
function VisualShader.replace_node(type, id, new_class) end

---@param type VisualShader.Type
---@param from_node integer
---@param from_port integer
---@param to_node integer
---@param to_port integer
---@return boolean
function VisualShader.is_node_connection(type, from_node, from_port, to_node, to_port) end

---@param type VisualShader.Type
---@param from_node integer
---@param from_port integer
---@param to_node integer
---@param to_port integer
---@return boolean
function VisualShader.can_connect_nodes(type, from_node, from_port, to_node, to_port) end

---@param type VisualShader.Type
---@param from_node integer
---@param from_port integer
---@param to_node integer
---@param to_port integer
---@return Error
function VisualShader.connect_nodes(type, from_node, from_port, to_node, to_port) end

---@param type VisualShader.Type
---@param from_node integer
---@param from_port integer
---@param to_node integer
---@param to_port integer
function VisualShader.disconnect_nodes(type, from_node, from_port, to_node, to_port) end

---@param type VisualShader.Type
---@param from_node integer
---@param from_port integer
---@param to_node integer
---@param to_port integer
function VisualShader.connect_nodes_forced(type, from_node, from_port, to_node, to_port) end

---@param type VisualShader.Type
---@return Array<Dictionary>
function VisualShader.get_node_connections(type) end

---@param type VisualShader.Type
---@param id integer
---@param frame integer
function VisualShader.attach_node_to_frame(type, id, frame) end

---@param type VisualShader.Type
---@param id integer
function VisualShader.detach_node_from_frame(type, id) end

---@param name string
---@param mode VisualShader.VaryingMode
---@param type VisualShader.VaryingType
function VisualShader.add_varying(name, mode, type) end

---@param name string
function VisualShader.remove_varying(name) end

---@param name string
---@return boolean
function VisualShader.has_varying(name) end

---@param offset Vector2
function VisualShader.set_graph_offset(offset) end

---@return Vector2
function VisualShader.get_graph_offset() end

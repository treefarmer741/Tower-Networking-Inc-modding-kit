---@meta _
-- Generated API for game version 0.12.1

---@class WhiteboardCanvas : PanelContainer
---@field PALETTE_W integer # Constant value: 90
---@field CANVAS_W integer # Constant value: 650
---@field CANVAS_H integer # Constant value: 460
---@field PAL_TYPES Array<any> # Constant value: ["switch", "router", "firewall", "storage", "ups", "interface", "server", "connect", "erase", "label"]
---@field icon_scene PackedScene
---@field icon_display_size Vector2
---@field switch_tex Texture2D
---@field router_tex Texture2D
---@field firewall_tex Texture2D
---@field storage_tex Texture2D
---@field ups_tex Texture2D
---@field interface_tex Texture2D
---@field server_tex Texture2D
local WhiteboardCanvas = {}
---@enum WhiteboardCanvas.Mode
WhiteboardCanvas.Mode = {
	["MOVE"] = 0,
	["PLACE"] = 1,
	["CONNECT"] = 2,
	["LABEL"] = 3,
	["ERASE"] = 4,
}

---@param icon_id integer
---@param type string
---@param x number
---@param y number
function WhiteboardCanvas.rpc_spawn_icon(icon_id, type, x, y) end

---@param icon_id integer
---@param text string
---@param x number
---@param y number
function WhiteboardCanvas.rpc_spawn_label(icon_id, text, x, y) end

---@param icon_id integer
function WhiteboardCanvas.rpc_delete_icon(icon_id) end

---@param icon_id integer
---@param x number
---@param y number
function WhiteboardCanvas.rpc_move_icon(icon_id, x, y) end

---@param icon_id integer
---@param text string
function WhiteboardCanvas.rpc_set_label(icon_id, text) end

---@param line_id integer
---@param from_id integer
---@param to_id integer
function WhiteboardCanvas.rpc_draw_connection(line_id, from_id, to_id) end

---@param line_id integer
function WhiteboardCanvas.rpc_delete_line(line_id) end

---@param data table<any,any>
function WhiteboardCanvas.rpc_load_state(data) end

---@param icon WhiteboardIcon
function WhiteboardCanvas.on_icon_clicked(icon) end

---@return table<any,any>
function WhiteboardCanvas.export_save_data() end

---@param data table<any,any>
function WhiteboardCanvas.import_save_data(data) end

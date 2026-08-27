---@meta _
-- Generated API for game version 0.12.1

---@class ProjectTools : Node
---@field VariantCodec Object # Constant value: (res://addons/godot_atool/utils/variant_codec.gd):<GDScript#-9223367512291125371>
---@field MCPPaths Object # Constant value: (res://addons/godot_atool/utils/paths.gd):<GDScript#-9223368407003325626>
local ProjectTools = {}
---@enum ProjectTools.ENUM_HINTS
ProjectTools.ENUM_HINTS = {
	["anchors_preset"] = "0:Top Left,1:Top Right,2:Bottom Right,3:Bottom Left,4:Center Left,5:Center Top,6:Center Right,7:Center Bottom,8:Center,9:Left Wide,10:Top Wide,11:Right Wide,12:Bottom Wide,13:VCenter Wide,14:HCenter Wide,15:Full Rect",
	["grow_horizontal"] = "0:Begin,1:End,2:Both",
	["grow_vertical"] = "0:Begin,1:End,2:Both",
	["horizontal_alignment"] = "0:Left,1:Center,2:Right,3:Fill",
	["vertical_alignment"] = "0:Top,1:Center,2:Bottom,3:Fill",
}

---@param client Object
function ProjectTools.set_mcp_client(client) end

---@param plugin EditorPlugin
function ProjectTools.set_editor_plugin(plugin) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.get_project_settings(args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.list_settings(args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.update_project_settings(args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.get_input_map(args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.configure_input_map(args) end

---@param _args table<any,any>
---@return table<any,any>
function ProjectTools.get_collision_layers(_args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.get_node_properties(args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.setup_autoload(args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.get_console_log(args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.get_errors(args) end

---@param _args table<any,any>
---@return table<any,any>
function ProjectTools.clear_console_log(_args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.open_in_godot(args) end

---@param _args table<any,any>
---@return table<any,any>
function ProjectTools.scene_tree_dump(_args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.run_scene(args) end

---@param _args table<any,any>
---@return table<any,any>
function ProjectTools.stop_scene(_args) end

---@param _args table<any,any>
---@return table<any,any>
function ProjectTools.is_playing(_args) end

---@param _args table<any,any>
---@return table<any,any>
function ProjectTools.get_runtime_status(_args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.wait(args) end

---@param _args table<any,any>
---@return table<any,any>
function ProjectTools.rescan_filesystem(_args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.classdb_query(args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.audit_project_assets(args) end

---@param _args table<any,any>
---@return table<any,any>
function ProjectTools.list_objectdb_snapshots(_args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.read_objectdb_snapshot(args) end

---@param args table<any,any>
---@return table<any,any>
function ProjectTools.diff_objectdb_snapshots(args) end

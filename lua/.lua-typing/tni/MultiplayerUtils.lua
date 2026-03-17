---@meta _
-- Generated API for game version 0.10.0

---@class MultiplayerUtils : Object
---@field SYNCHRONIZER_PROHIBITION_METATAG string # Constant value: pocosia_multiplayer_synchronizer_prohibited
local MultiplayerUtils = {}

---@param mpspawn MultiplayerSpawner
---@param path string
---@param recursion boolean?  # Default = true
---@param ensure_added boolean?  # Default = true
---@return integer
function MultiplayerUtils.add_scenes_in_path_as_spawnable(mpspawn, path, recursion, ensure_added) end

---@param mpsync MultiplayerSynchronizer
---@param repl_config_map table<any,any>
function MultiplayerUtils.update_replication_config(mpsync, repl_config_map) end

---@param repl_config_map table<any,any>
---@return Object
function MultiplayerUtils.create_replication_config(repl_config_map) end

---@param parent Node
---@param recurse_into_descendants boolean?  # Default = true
function MultiplayerUtils.prohibit_and_remove_synchronizers(parent, recurse_into_descendants) end

---@param parent Node
---@param repl_config_map table<any,any>
---@param sync_interval Object?  # Default = 0.0
---@param watch_interval Object?  # Default = 0.0
---@param name string?  # Default = MultiplayerSynchronizer
---@return MultiplayerSynchronizer
function MultiplayerUtils.add_synchronizer_with_config(parent, repl_config_map, sync_interval, watch_interval, name) end

---@param mpsync MultiplayerSynchronizer
function MultiplayerUtils.debug_synchronizer(mpsync) end

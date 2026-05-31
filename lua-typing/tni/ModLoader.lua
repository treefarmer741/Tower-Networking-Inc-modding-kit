---@meta _
-- Generated API for game version 0.10.11

---@class ModLoader : Node
---@field PRESET_FILE string # Constant value: user://mod_preset.json
---@field MOD_DIR string # Constant value: user://mods/
---@field lua_enabled boolean
---@field lua_elf_path string
---@field discovered_mods Array<ModManifest>
---@field preset ModPreset
---@field loaded_mods Array<Mod>
---@field loaded_mods_ids table<string,integer>
---@field mod_restrictions ModRestrictions
---@field has_reloaded boolean
local ModLoader = {}

function ModLoader.rediscover_mods() end

---@param manifest ModManifest
---@return Mod
function ModLoader.try_load_mod(manifest) end

function ModLoader.reload_mods() end

function ModLoader.game_host_eod() end

function ModLoader.game_state_ready() end

---@param device DeviceUnit
function ModLoader.device_spawned(device) end

---@param user LogicControllerUser
function ModLoader.user_spawned(user) end

---@param location Location
function ModLoader.location_spawned(location) end

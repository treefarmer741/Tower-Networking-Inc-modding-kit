---@meta _
-- Generated API for game version 0.10.0

---@class ModLoader : Node
---@field MOD_DIR string # Constant value: user://mods/
---@field loaded_mods Array<Mod>
---@field lua_enabled boolean
---@field lua_elf_path string
local ModLoader = {}

---@param mod_name string
function ModLoader.try_load_mod(mod_name) end

function ModLoader.reload_mods() end

function ModLoader.game_host_eod() end

function ModLoader.game_state_ready() end

---@param device Object
function ModLoader.device_spawned(device) end

---@param user Object
function ModLoader.user_spawned(user) end

---@param loc Object
function ModLoader.location_spawned(loc) end

---@meta _

---@type Mod
Mod = nil

---@type ModApiV1
ModApiV1 = nil

---@type ModFileSystem
ModFileSystem = nil

---@type Engine
Engine = nil

---@type Array
Array = nil

---@type Dictionary
Dictionary = nil

---@type Callable
Callable = nil

---@param path string
---@return any|Object
function loadv(path) end

-- Callback event, optionally defined by the user.
function on_mod_load() end

-- Callback event, optionally defined by the user.
function on_mods_loaded() end

-- Callback event, optionally defined by the user.
function on_game_state_ready() end

-- Callback event, optionally defined by the user.
function on_game_host_eod() end

-- Callback event, optionally defined by the user.
---@param delta number
function on_game_tick(delta) end

-- Callback event, optionally defined by the user.
---@param event InputEvent
function on_player_input(event) end

-- Callback event, optionally defined by the user.
---@param device DeviceUnit
function on_device_spawned(device) end

-- Callback event, optionally defined by the user.
---@param user LogicControllerUser
function on_user_spawned(user) end

-- Callback event, optionally defined by the user.
---@param location Location
function on_location_spawned(location) end

-- Callback event, optionally defined by the user.
---@param merchant Merchant
function on_merchant_spawned(merchant) end

-- Callback event, optionally defined by the user.
---@param data Dictionary
function on_save_export(data) end

-- Callback event, optionally defined by the user.
---@param data Dictionary
function on_save_import(data) end

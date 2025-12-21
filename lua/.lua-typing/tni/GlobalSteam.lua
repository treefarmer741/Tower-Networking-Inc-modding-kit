---@meta _
-- Generated API for game version 0.9.1

---@class GlobalSteam : Node
---@field disabled boolean
---@field is_online boolean
---@field is_owned boolean
---@field appid integer
---@field userid integer
---@field username string
---@field parent_process_name string
---@field is_pirated_copy boolean
local GlobalSteam = {}

function GlobalSteam.shutdown() end

---@param autoquit_on_fail boolean?  # Default = false
---@param steam_app_id integer?  # Default = 0
function GlobalSteam.initialize(autoquit_on_fail, steam_app_id) end

---@return boolean
function GlobalSteam.test_steamlib_file_tampering() end

---@return boolean
function GlobalSteam.test_online_fix() end

---@return boolean
function GlobalSteam.test_gbe_loader() end

---@return Object
function GlobalSteam.get_parent_process_name() end

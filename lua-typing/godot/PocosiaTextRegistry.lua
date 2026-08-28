---@meta _
-- Generated API for game version 0.12.1

---@class PocosiaTextRegistry : Node
---@field max_attempts Object
---@field si integer
---@field lol Array<any>
---@field sepchar string
local PocosiaTextRegistry = {}

function PocosiaTextRegistry.clear_registry() end

---@param seed_i_ integer
---@param list_of_lists_ Array<any>
---@param separator_ string
---@param max_attempts_ integer?  # Default = 10
function PocosiaTextRegistry.setup_text_registry(seed_i_, list_of_lists_, separator_, max_attempts_) end

---@param node Node
---@return string
function PocosiaTextRegistry.get_or_generate_deterministic_string(node) end

---@param path string
---@param seed_i integer
---@param attempt integer
---@param list_of_list Array<any>
---@param sep string
---@return string
function PocosiaTextRegistry.generate_string_from_lists(path, seed_i, attempt, list_of_list, sep) end

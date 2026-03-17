---@meta _
-- Generated API for game version 0.10.0

---@class DemoMessage : Window
---@field tutorial_name string
---@field tutorial_content string
---@field demo_tutorial_scenarios Array<any>
---@field demo_tutorial_sequence Object
local DemoMessage = {}

---@param filename Object
function DemoMessage.refresh_tutorial(filename) end

---@param filename Object
---@return Object
function DemoMessage.load_tutorial_txt(filename) end

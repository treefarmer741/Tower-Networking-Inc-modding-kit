---@meta _
-- Generated API for game version 0.13.1

---@class SecretariatCreditController : Node
---@field BEHAVIOR_KEY string # Constant value: profile-user-behavior
---@field secretariat_credit integer
---@field behavior_per_credit integer
local SecretariatCreditController = {}

---@param amount integer
function SecretariatCreditController.add_secretariat_credit(amount) end

---@param drain_devpaths Array<any>
---@param needed integer
---@return integer
function SecretariatCreditController.drain_behavior_data(drain_devpaths, needed) end

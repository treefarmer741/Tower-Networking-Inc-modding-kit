---@meta _
-- Generated API for game version 0.10.0

---@class TextServerManager : Object
local TextServerManager = {}

---@param interface TextServer
function TextServerManager.add_interface(interface) end

---@return integer
function TextServerManager.get_interface_count() end

---@param interface TextServer
function TextServerManager.remove_interface(interface) end

---@param idx integer
---@return TextServer
function TextServerManager.get_interface(idx) end

---@return Array<Dictionary>
function TextServerManager.get_interfaces() end

---@param name string
---@return TextServer
function TextServerManager.find_interface(name) end

---@param index TextServer
function TextServerManager.set_primary_interface(index) end

---@return TextServer
function TextServerManager.get_primary_interface() end

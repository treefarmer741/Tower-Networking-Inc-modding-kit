---@meta _
-- Generated API for game version 0.9.1

---@class X509Certificate : Resource
local X509Certificate = {}

---@param path string
---@return Error
function X509Certificate.save(path) end

---@param path string
---@return Error
function X509Certificate.load(path) end

---@return string
function X509Certificate.save_to_string() end

---@param string string
---@return Error
function X509Certificate.load_from_string(string) end

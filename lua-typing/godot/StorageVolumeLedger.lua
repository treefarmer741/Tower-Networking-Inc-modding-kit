---@meta _
-- Generated API for game version 0.12.1

---@class StorageVolumeLedger : RefCounted
---@field ctl LogicController
---@field claims table<any,any>
---@field capacity integer
---@field used_capacity integer
---@field free_capacity integer
local StorageVolumeLedger = {}

---@param ctl_ Object
---@param claims_ table<any,any>
---@param capacity_ integer
---@return StorageVolumeLedger
function StorageVolumeLedger.create(ctl_, claims_, capacity_) end

---@param filekey string
---@return boolean
function StorageVolumeLedger.is_binary_key(filekey) end

---@param source Array<any>
---@param binaries_first boolean
---@return Array<any>
function StorageVolumeLedger.ordered_keys(source, binaries_first) end

---@param p Object
---@return boolean
function StorageVolumeLedger.is_storage_program(p) end

---@param filekey string
---@return integer
function StorageVolumeLedger.ledger_size(filekey) end

---@return Array<any>
function StorageVolumeLedger.spill_candidates() end

---@param filekey string
---@return boolean
function StorageVolumeLedger.held_by_disk(filekey) end

---@param filekey string
---@return boolean
function StorageVolumeLedger.held_by_san_volume(filekey) end

---@param filekey string
---@param body Array<any>
---@return string
function StorageVolumeLedger.restore_body(filekey, body) end

---@param filekey string
---@return Array<any>
function StorageVolumeLedger.check_transferable(filekey) end

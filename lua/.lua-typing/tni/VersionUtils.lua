---@meta _
-- Generated API for game version 0.9.1

---@class VersionUtils : Object
---@field ELEVATION_KEY_FILE string # Constant value: elevation.txt
---@field BUILD_REGEX string # Constant value: ^\d{6}/\d+.\d+.\d+
---@field SEMVER_REGEX string # Constant value: ^(\d+)\.(\d+)\.(\d+)[a-z]?$
local VersionUtils = {}

---@return string
function VersionUtils.get_build_features() end

---@return boolean
function VersionUtils.export_elevation_detected() end

---@return boolean
function VersionUtils.is_editor_build() end

---@return boolean
function VersionUtils.is_exported_build() end

---@return boolean
function VersionUtils.is_multiplayer_build() end

---@return boolean
function VersionUtils.is_lan_build() end

---@return boolean
function VersionUtils.is_demo_build() end

---@return string
function VersionUtils.get_build_version() end

---@return string
function VersionUtils.get_semantic_version() end

---@param semvs string
---@param part_n integer?  # Default = 0
---@return integer
function VersionUtils.get_semantic_version_part_number(semvs, part_n) end

---@param semvs string
---@param min_major_version integer
---@param min_minor_version integer
---@return string
function VersionUtils.test_version_incompatibility(semvs, min_major_version, min_minor_version) end

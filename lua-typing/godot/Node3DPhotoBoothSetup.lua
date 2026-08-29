---@meta _
-- Generated API for game version 0.12.1

---@class Node3DPhotoBoothSetup : SubViewport
---@field subject_anchor Node3D
---@field imagetexture_cache table<any,any>
local Node3DPhotoBoothSetup = {}

---@param subject_ps PackedScene
---@return ImageTexture
function Node3DPhotoBoothSetup.take_imagetexture_snapshot(subject_ps) end

function Node3DPhotoBoothSetup.clear_subject() end

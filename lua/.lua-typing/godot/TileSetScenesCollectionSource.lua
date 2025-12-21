---@meta _
-- Generated API for game version 0.9.1

---@class TileSetScenesCollectionSource : TileSetSource
local TileSetScenesCollectionSource = {}

---@return integer
function TileSetScenesCollectionSource.get_scene_tiles_count() end

---@param index integer
---@return integer
function TileSetScenesCollectionSource.get_scene_tile_id(index) end

---@param id integer
---@return boolean
function TileSetScenesCollectionSource.has_scene_tile_id(id) end

---@param packed_scene PackedScene
---@param id_override integer?  # Default = -1
---@return integer
function TileSetScenesCollectionSource.create_scene_tile(packed_scene, id_override) end

---@param id integer
---@param new_id integer
function TileSetScenesCollectionSource.set_scene_tile_id(id, new_id) end

---@param id integer
---@param packed_scene PackedScene
function TileSetScenesCollectionSource.set_scene_tile_scene(id, packed_scene) end

---@param id integer
---@return PackedScene
function TileSetScenesCollectionSource.get_scene_tile_scene(id) end

---@param id integer
---@param display_placeholder boolean
function TileSetScenesCollectionSource.set_scene_tile_display_placeholder(id, display_placeholder) end

---@param id integer
---@return boolean
function TileSetScenesCollectionSource.get_scene_tile_display_placeholder(id) end

---@param id integer
function TileSetScenesCollectionSource.remove_scene_tile(id) end

---@return integer
function TileSetScenesCollectionSource.get_next_scene_tile_id() end

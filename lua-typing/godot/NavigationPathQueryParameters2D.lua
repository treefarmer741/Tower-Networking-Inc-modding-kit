---@meta _
-- Generated API for game version 0.10.0

---@class NavigationPathQueryParameters2D : RefCounted
---@field map RID
---@field start_position Vector2
---@field target_position Vector2
---@field navigation_layers integer
---@field pathfinding_algorithm integer
---@field path_postprocessing integer
---@field metadata_flags integer
---@field simplify_path boolean
---@field simplify_epsilon number
---@field excluded_regions Array<RID>
---@field included_regions Array<RID>
---@field path_return_max_length number
---@field path_return_max_radius number
---@field path_search_max_polygons integer
---@field path_search_max_distance number
local NavigationPathQueryParameters2D = {}

---@param pathfinding_algorithm NavigationPathQueryParameters2D.PathfindingAlgorithm
function NavigationPathQueryParameters2D.set_pathfinding_algorithm(pathfinding_algorithm) end

---@return NavigationPathQueryParameters2D.PathfindingAlgorithm
function NavigationPathQueryParameters2D.get_pathfinding_algorithm() end

---@param path_postprocessing NavigationPathQueryParameters2D.PathPostProcessing
function NavigationPathQueryParameters2D.set_path_postprocessing(path_postprocessing) end

---@return NavigationPathQueryParameters2D.PathPostProcessing
function NavigationPathQueryParameters2D.get_path_postprocessing() end

---@param map RID
function NavigationPathQueryParameters2D.set_map(map) end

---@return RID
function NavigationPathQueryParameters2D.get_map() end

---@param start_position Vector2
function NavigationPathQueryParameters2D.set_start_position(start_position) end

---@return Vector2
function NavigationPathQueryParameters2D.get_start_position() end

---@param target_position Vector2
function NavigationPathQueryParameters2D.set_target_position(target_position) end

---@return Vector2
function NavigationPathQueryParameters2D.get_target_position() end

---@param navigation_layers integer
function NavigationPathQueryParameters2D.set_navigation_layers(navigation_layers) end

---@return integer
function NavigationPathQueryParameters2D.get_navigation_layers() end

---@param flags NavigationPathQueryParameters2D.PathMetadataFlags
function NavigationPathQueryParameters2D.set_metadata_flags(flags) end

---@return NavigationPathQueryParameters2D.PathMetadataFlags
function NavigationPathQueryParameters2D.get_metadata_flags() end

---@param enabled boolean
function NavigationPathQueryParameters2D.set_simplify_path(enabled) end

---@return boolean
function NavigationPathQueryParameters2D.get_simplify_path() end

---@param epsilon number
function NavigationPathQueryParameters2D.set_simplify_epsilon(epsilon) end

---@return number
function NavigationPathQueryParameters2D.get_simplify_epsilon() end

---@param regions Array<RID>
function NavigationPathQueryParameters2D.set_included_regions(regions) end

---@return Array<RID>
function NavigationPathQueryParameters2D.get_included_regions() end

---@param regions Array<RID>
function NavigationPathQueryParameters2D.set_excluded_regions(regions) end

---@return Array<RID>
function NavigationPathQueryParameters2D.get_excluded_regions() end

---@param length number
function NavigationPathQueryParameters2D.set_path_return_max_length(length) end

---@return number
function NavigationPathQueryParameters2D.get_path_return_max_length() end

---@param radius number
function NavigationPathQueryParameters2D.set_path_return_max_radius(radius) end

---@return number
function NavigationPathQueryParameters2D.get_path_return_max_radius() end

---@param max_polygons integer
function NavigationPathQueryParameters2D.set_path_search_max_polygons(max_polygons) end

---@return integer
function NavigationPathQueryParameters2D.get_path_search_max_polygons() end

---@param distance number
function NavigationPathQueryParameters2D.set_path_search_max_distance(distance) end

---@return number
function NavigationPathQueryParameters2D.get_path_search_max_distance() end

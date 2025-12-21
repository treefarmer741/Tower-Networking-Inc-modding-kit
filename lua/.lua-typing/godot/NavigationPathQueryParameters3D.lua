---@meta _
-- Generated API for game version 0.9.1

---@class NavigationPathQueryParameters3D : RefCounted
---@field map RID
---@field start_position Vector3
---@field target_position Vector3
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
local NavigationPathQueryParameters3D = {}

---@param pathfinding_algorithm NavigationPathQueryParameters3D.PathfindingAlgorithm
function NavigationPathQueryParameters3D.set_pathfinding_algorithm(pathfinding_algorithm) end

---@return NavigationPathQueryParameters3D.PathfindingAlgorithm
function NavigationPathQueryParameters3D.get_pathfinding_algorithm() end

---@param path_postprocessing NavigationPathQueryParameters3D.PathPostProcessing
function NavigationPathQueryParameters3D.set_path_postprocessing(path_postprocessing) end

---@return NavigationPathQueryParameters3D.PathPostProcessing
function NavigationPathQueryParameters3D.get_path_postprocessing() end

---@param map RID
function NavigationPathQueryParameters3D.set_map(map) end

---@return RID
function NavigationPathQueryParameters3D.get_map() end

---@param start_position Vector3
function NavigationPathQueryParameters3D.set_start_position(start_position) end

---@return Vector3
function NavigationPathQueryParameters3D.get_start_position() end

---@param target_position Vector3
function NavigationPathQueryParameters3D.set_target_position(target_position) end

---@return Vector3
function NavigationPathQueryParameters3D.get_target_position() end

---@param navigation_layers integer
function NavigationPathQueryParameters3D.set_navigation_layers(navigation_layers) end

---@return integer
function NavigationPathQueryParameters3D.get_navigation_layers() end

---@param flags NavigationPathQueryParameters3D.PathMetadataFlags
function NavigationPathQueryParameters3D.set_metadata_flags(flags) end

---@return NavigationPathQueryParameters3D.PathMetadataFlags
function NavigationPathQueryParameters3D.get_metadata_flags() end

---@param enabled boolean
function NavigationPathQueryParameters3D.set_simplify_path(enabled) end

---@return boolean
function NavigationPathQueryParameters3D.get_simplify_path() end

---@param epsilon number
function NavigationPathQueryParameters3D.set_simplify_epsilon(epsilon) end

---@return number
function NavigationPathQueryParameters3D.get_simplify_epsilon() end

---@param regions Array<RID>
function NavigationPathQueryParameters3D.set_included_regions(regions) end

---@return Array<RID>
function NavigationPathQueryParameters3D.get_included_regions() end

---@param regions Array<RID>
function NavigationPathQueryParameters3D.set_excluded_regions(regions) end

---@return Array<RID>
function NavigationPathQueryParameters3D.get_excluded_regions() end

---@param length number
function NavigationPathQueryParameters3D.set_path_return_max_length(length) end

---@return number
function NavigationPathQueryParameters3D.get_path_return_max_length() end

---@param radius number
function NavigationPathQueryParameters3D.set_path_return_max_radius(radius) end

---@return number
function NavigationPathQueryParameters3D.get_path_return_max_radius() end

---@param max_polygons integer
function NavigationPathQueryParameters3D.set_path_search_max_polygons(max_polygons) end

---@return integer
function NavigationPathQueryParameters3D.get_path_search_max_polygons() end

---@param distance number
function NavigationPathQueryParameters3D.set_path_search_max_distance(distance) end

---@return number
function NavigationPathQueryParameters3D.get_path_search_max_distance() end

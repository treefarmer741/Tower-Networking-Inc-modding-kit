---@meta _
-- Generated API for game version 0.10.0

---@class TubeTrailMesh : PrimitiveMesh
---@field radius number
---@field radial_steps integer
---@field sections integer
---@field section_length number
---@field section_rings integer
---@field cap_top boolean
---@field cap_bottom boolean
---@field curve Curve
local TubeTrailMesh = {}

---@param radius number
function TubeTrailMesh.set_radius(radius) end

---@return number
function TubeTrailMesh.get_radius() end

---@param radial_steps integer
function TubeTrailMesh.set_radial_steps(radial_steps) end

---@return integer
function TubeTrailMesh.get_radial_steps() end

---@param sections integer
function TubeTrailMesh.set_sections(sections) end

---@return integer
function TubeTrailMesh.get_sections() end

---@param section_length number
function TubeTrailMesh.set_section_length(section_length) end

---@return number
function TubeTrailMesh.get_section_length() end

---@param section_rings integer
function TubeTrailMesh.set_section_rings(section_rings) end

---@return integer
function TubeTrailMesh.get_section_rings() end

---@param cap_top boolean
function TubeTrailMesh.set_cap_top(cap_top) end

---@return boolean
function TubeTrailMesh.is_cap_top() end

---@param cap_bottom boolean
function TubeTrailMesh.set_cap_bottom(cap_bottom) end

---@return boolean
function TubeTrailMesh.is_cap_bottom() end

---@param curve Curve
function TubeTrailMesh.set_curve(curve) end

---@return Curve
function TubeTrailMesh.get_curve() end

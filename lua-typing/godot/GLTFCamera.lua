---@meta _
-- Generated API for game version 0.10.0

---@class GLTFCamera : Resource
---@field perspective boolean
---@field fov number
---@field size_mag number
---@field depth_far number
---@field depth_near number
local GLTFCamera = {}

---@param camera_node Camera3D
---@return GLTFCamera
function GLTFCamera.from_node(camera_node) end

---@return Camera3D
function GLTFCamera.to_node() end

---@param dictionary table<any,any>
---@return GLTFCamera
function GLTFCamera.from_dictionary(dictionary) end

---@return table<any,any>
function GLTFCamera.to_dictionary() end

---@return boolean
function GLTFCamera.get_perspective() end

---@param perspective boolean
function GLTFCamera.set_perspective(perspective) end

---@return number
function GLTFCamera.get_fov() end

---@param fov number
function GLTFCamera.set_fov(fov) end

---@return number
function GLTFCamera.get_size_mag() end

---@param size_mag number
function GLTFCamera.set_size_mag(size_mag) end

---@return number
function GLTFCamera.get_depth_far() end

---@param zdepth_far number
function GLTFCamera.set_depth_far(zdepth_far) end

---@return number
function GLTFCamera.get_depth_near() end

---@param zdepth_near number
function GLTFCamera.set_depth_near(zdepth_near) end

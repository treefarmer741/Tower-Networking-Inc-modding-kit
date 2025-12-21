---@meta _
-- Generated API for game version 0.9.1

---@class XRInterfaceExtension : XRInterface
local XRInterfaceExtension = {}

---@return RID
function XRInterfaceExtension.get_color_texture() end

---@return RID
function XRInterfaceExtension.get_depth_texture() end

---@return RID
function XRInterfaceExtension.get_velocity_texture() end

---@param render_target RID
---@param src_rect Rect2
---@param dst_rect Rect2i
---@param use_layer boolean
---@param layer integer
---@param apply_lens_distortion boolean
---@param eye_center Vector2
---@param k1 number
---@param k2 number
---@param upscale number
---@param aspect_ratio number
function XRInterfaceExtension.add_blit(render_target, src_rect, dst_rect, use_layer, layer, apply_lens_distortion, eye_center, k1, k2, upscale, aspect_ratio) end

---@param render_target RID
---@return RID
function XRInterfaceExtension.get_render_target_texture(render_target) end

---@meta _
-- Generated API for game version 0.9.1

---@class Image : Resource
---@field data table<any,any>
local Image = {}

---@return integer
function Image.get_width() end

---@return integer
function Image.get_height() end

---@return Vector2i
function Image.get_size() end

---@return boolean
function Image.has_mipmaps() end

---@return Image.Format
function Image.get_format() end

---@return PackedByteArray
function Image.get_data() end

---@return integer
function Image.get_data_size() end

---@param format Image.Format
function Image.convert(format) end

---@return integer
function Image.get_mipmap_count() end

---@param mipmap integer
---@return integer
function Image.get_mipmap_offset(mipmap) end

---@param square boolean?  # Default = false
---@param interpolation Image.Interpolation?  # Default = 1
function Image.resize_to_po2(square, interpolation) end

---@param width integer
---@param height integer
---@param interpolation Image.Interpolation?  # Default = 1
function Image.resize(width, height, interpolation) end

function Image.shrink_x2() end

---@param width integer
---@param height integer
function Image.crop(width, height) end

function Image.flip_x() end

function Image.flip_y() end

---@param renormalize boolean?  # Default = false
---@return Error
function Image.generate_mipmaps(renormalize) end

function Image.clear_mipmaps() end

---@param width integer
---@param height integer
---@param use_mipmaps boolean
---@param format Image.Format
---@return Image
function Image.create(width, height, use_mipmaps, format) end

---@param width integer
---@param height integer
---@param use_mipmaps boolean
---@param format Image.Format
---@return Image
function Image.create_empty(width, height, use_mipmaps, format) end

---@param width integer
---@param height integer
---@param use_mipmaps boolean
---@param format Image.Format
---@param data PackedByteArray
---@return Image
function Image.create_from_data(width, height, use_mipmaps, format, data) end

---@param width integer
---@param height integer
---@param use_mipmaps boolean
---@param format Image.Format
---@param data PackedByteArray
function Image.set_data(width, height, use_mipmaps, format, data) end

---@return boolean
function Image.is_empty() end

---@param path string
---@return Error
function Image.load(path) end

---@param path string
---@return Image
function Image.load_from_file(path) end

---@param path string
---@return Error
function Image.save_png(path) end

---@return PackedByteArray
function Image.save_png_to_buffer() end

---@param path string
---@param quality number?  # Default = 0.75
---@return Error
function Image.save_jpg(path, quality) end

---@param quality number?  # Default = 0.75
---@return PackedByteArray
function Image.save_jpg_to_buffer(quality) end

---@param path string
---@param grayscale boolean?  # Default = false
---@return Error
function Image.save_exr(path, grayscale) end

---@param grayscale boolean?  # Default = false
---@return PackedByteArray
function Image.save_exr_to_buffer(grayscale) end

---@param path string
---@return Error
function Image.save_dds(path) end

---@return PackedByteArray
function Image.save_dds_to_buffer() end

---@param path string
---@param lossy boolean?  # Default = false
---@param quality number?  # Default = 0.75
---@return Error
function Image.save_webp(path, lossy, quality) end

---@param lossy boolean?  # Default = false
---@param quality number?  # Default = 0.75
---@return PackedByteArray
function Image.save_webp_to_buffer(lossy, quality) end

---@return Image.AlphaMode
function Image.detect_alpha() end

---@return boolean
function Image.is_invisible() end

---@param source Image.CompressSource?  # Default = 0
---@return Image.UsedChannels
function Image.detect_used_channels(source) end

---@param mode Image.CompressMode
---@param source Image.CompressSource?  # Default = 0
---@param astc_format Image.ASTCFormat?  # Default = 0
---@return Error
function Image.compress(mode, source, astc_format) end

---@param mode Image.CompressMode
---@param channels Image.UsedChannels
---@param astc_format Image.ASTCFormat?  # Default = 0
---@return Error
function Image.compress_from_channels(mode, channels, astc_format) end

---@return Error
function Image.decompress() end

---@return boolean
function Image.is_compressed() end

---@param direction ClockDirection
function Image.rotate_90(direction) end

function Image.rotate_180() end

function Image.fix_alpha_edges() end

function Image.premultiply_alpha() end

function Image.srgb_to_linear() end

function Image.linear_to_srgb() end

function Image.normal_map_to_xy() end

---@return Image
function Image.rgbe_to_srgb() end

---@param bump_scale number?  # Default = 1.0
function Image.bump_map_to_normal_map(bump_scale) end

---@param compared_image Image
---@param use_luma boolean
---@return table<any,any>
function Image.compute_image_metrics(compared_image, use_luma) end

---@param src Image
---@param src_rect Rect2i
---@param dst Vector2i
function Image.blit_rect(src, src_rect, dst) end

---@param src Image
---@param mask Image
---@param src_rect Rect2i
---@param dst Vector2i
function Image.blit_rect_mask(src, mask, src_rect, dst) end

---@param src Image
---@param src_rect Rect2i
---@param dst Vector2i
function Image.blend_rect(src, src_rect, dst) end

---@param src Image
---@param mask Image
---@param src_rect Rect2i
---@param dst Vector2i
function Image.blend_rect_mask(src, mask, src_rect, dst) end

---@param color Color
function Image.fill(color) end

---@param rect Rect2i
---@param color Color
function Image.fill_rect(rect, color) end

---@return Rect2i
function Image.get_used_rect() end

---@param region Rect2i
---@return Image
function Image.get_region(region) end

---@param src Image
function Image.copy_from(src) end

---@param point Vector2i
---@return Color
function Image.get_pixelv(point) end

---@param x integer
---@param y integer
---@return Color
function Image.get_pixel(x, y) end

---@param point Vector2i
---@param color Color
function Image.set_pixelv(point, color) end

---@param x integer
---@param y integer
---@param color Color
function Image.set_pixel(x, y, color) end

---@param brightness number
---@param contrast number
---@param saturation number
function Image.adjust_bcs(brightness, contrast, saturation) end

---@param buffer PackedByteArray
---@return Error
function Image.load_png_from_buffer(buffer) end

---@param buffer PackedByteArray
---@return Error
function Image.load_jpg_from_buffer(buffer) end

---@param buffer PackedByteArray
---@return Error
function Image.load_webp_from_buffer(buffer) end

---@param buffer PackedByteArray
---@return Error
function Image.load_tga_from_buffer(buffer) end

---@param buffer PackedByteArray
---@return Error
function Image.load_bmp_from_buffer(buffer) end

---@param buffer PackedByteArray
---@return Error
function Image.load_ktx_from_buffer(buffer) end

---@param buffer PackedByteArray
---@return Error
function Image.load_dds_from_buffer(buffer) end

---@param buffer PackedByteArray
---@param scale number?  # Default = 1.0
---@return Error
function Image.load_svg_from_buffer(buffer, scale) end

---@param svg_str string
---@param scale number?  # Default = 1.0
---@return Error
function Image.load_svg_from_string(svg_str, scale) end

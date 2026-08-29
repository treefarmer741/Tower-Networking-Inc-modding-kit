#ifndef TNI_API_HEADER_KEYSTONETOKEYSTONELINK
#define TNI_API_HEADER_KEYSTONETOKEYSTONELINK
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "TrayAffixedLink.hpp"

struct KeystoneToKeystoneLink : public TrayAffixedLink {
	using TrayAffixedLink::TrayAffixedLink;

	constexpr KeystoneToKeystoneLink(TrayAffixedLink base) : TrayAffixedLink{base} {}
	constexpr KeystoneToKeystoneLink(uint64_t addr) : TrayAffixedLink{addr} {}
	constexpr KeystoneToKeystoneLink(Object obj) : KeystoneToKeystoneLink{obj.address()} {}
	KeystoneToKeystoneLink(Variant variant) : KeystoneToKeystoneLink{variant.as_object().address()} {}

	static constexpr double SAG_EXIT_LENGTH = 40.0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(max_cable_length, double);

	inline void setup_keystone_to_keystone(Variant waypoints, const KeystoneSocket& start_keystone, Variant start_keystone_world_pos, const KeystoneSocket& end_keystone, Variant end_keystone_world_pos, Variant cable_color, bool _color_plug_ends, double cable_width, Variant seg_spine_x_offsets, Variant seg_depth_colors, Variant seg_sides, Variant seg_cols);
	inline void remove_link();
	inline void setup_tray_affix(Variant waypoints, Variant affix_start_world_pos, Variant affix_end_world_pos, String start_plug_scene_path, String end_plug_scene_path, Variant cable_color, bool color_plug_ends, double cable_width, Variant seg_spine_x_offsets, Variant seg_depth_colors, Variant seg_sides, Variant seg_cols);
	inline void set_highlight(bool enabled);
	inline Variant get_plug_nodes();
	inline PackedArray<Vector2> get_tray_path_points();
	inline bool uses_tray(const CableTray& tray);
};

#include "KeystoneSocket.hpp"
#include "CableTray.hpp"

inline void KeystoneToKeystoneLink::setup_keystone_to_keystone(Variant waypoints, const KeystoneSocket& start_keystone, Variant start_keystone_world_pos, const KeystoneSocket& end_keystone, Variant end_keystone_world_pos, Variant cable_color, bool _color_plug_ends, double cable_width, Variant seg_spine_x_offsets, Variant seg_depth_colors, Variant seg_sides, Variant seg_cols) { this->voidcall("setup_keystone_to_keystone", waypoints, Object(reinterpret_cast<const Object*>(&start_keystone)->address()), start_keystone_world_pos, Object(reinterpret_cast<const Object*>(&end_keystone)->address()), end_keystone_world_pos, cable_color, _color_plug_ends, cable_width, seg_spine_x_offsets, seg_depth_colors, seg_sides, seg_cols); }
inline void KeystoneToKeystoneLink::remove_link() { this->voidcall("remove_link"); }
inline void KeystoneToKeystoneLink::setup_tray_affix(Variant waypoints, Variant affix_start_world_pos, Variant affix_end_world_pos, String start_plug_scene_path, String end_plug_scene_path, Variant cable_color, bool color_plug_ends, double cable_width, Variant seg_spine_x_offsets, Variant seg_depth_colors, Variant seg_sides, Variant seg_cols) { this->voidcall("setup_tray_affix", waypoints, affix_start_world_pos, affix_end_world_pos, start_plug_scene_path, end_plug_scene_path, cable_color, color_plug_ends, cable_width, seg_spine_x_offsets, seg_depth_colors, seg_sides, seg_cols); }
inline void KeystoneToKeystoneLink::set_highlight(bool enabled) { this->voidcall("set_highlight", enabled); }
inline Variant KeystoneToKeystoneLink::get_plug_nodes() { return this->operator()("get_plug_nodes"); }
inline PackedArray<Vector2> KeystoneToKeystoneLink::get_tray_path_points() { return this->operator()("get_tray_path_points"); }
inline bool KeystoneToKeystoneLink::uses_tray(const CableTray& tray) { return this->operator()("uses_tray", Object(reinterpret_cast<const Object*>(&tray)->address())); }

#endif

#ifndef TNI_API_HEADER_CABLETRAY
#define TNI_API_HEADER_CABLETRAY
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CableTray : public Area2D {
	using Area2D::Area2D;

	constexpr CableTray(Area2D base) : Area2D{base} {}
	constexpr CableTray(uint64_t addr) : Area2D{addr} {}
	constexpr CableTray(Object obj) : CableTray{obj.address()} {}
	CableTray(Variant variant) : CableTray{variant.as_object().address()} {}

	static constexpr int64_t ZINDEX = 150;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(spine_fill_positive_first, bool);
	PROPERTY(spine_separation, double);
	PROPERTY(spine_value_variation, double);
	PROPERTY(horizontal, bool);
	PROPERTY(cabling_area, Sprite2D);

	inline void remove();
	inline TrayAffixedLink create_affixed_link(Variant waypoints, Variant affix_start_world_pos, Variant affix_end_world_pos, String start_plug_path, String end_plug_path, Variant color, bool color_plug_ends, double cable_width);
	inline Variant clamp_to_secondary(Variant world_pos);
	inline Variant export_affixed_links();
	inline void import_affixed_links(Variant data);
	inline Variant export_keystone_links();
	inline void import_keystone_links(Variant data);
	inline void create_keystone_affix_link(Variant waypoints, Variant affix_start_world_pos, const KeystoneSocket& keystone_socket, const UnterminatedSpool& spool);
	inline void create_keystone_to_keystone_link(Variant waypoints, const KeystoneSocket& start_ks, const KeystoneSocket& end_ks, const UnterminatedSpool& spool);
	inline Variant export_ks_to_ks_links();
	inline void import_ks_to_ks_links(Variant data);
};

#include "TrayAffixedLink.hpp"
#include "KeystoneSocket.hpp"
#include "UnterminatedSpool.hpp"

inline void CableTray::remove() { this->voidcall("remove"); }
inline TrayAffixedLink CableTray::create_affixed_link(Variant waypoints, Variant affix_start_world_pos, Variant affix_end_world_pos, String start_plug_path, String end_plug_path, Variant color, bool color_plug_ends, double cable_width) { return TrayAffixedLink(this->operator()("create_affixed_link", waypoints, affix_start_world_pos, affix_end_world_pos, start_plug_path, end_plug_path, color, color_plug_ends, cable_width).as_object().address()); }
inline Variant CableTray::clamp_to_secondary(Variant world_pos) { return this->operator()("clamp_to_secondary", world_pos); }
inline Variant CableTray::export_affixed_links() { return this->operator()("export_affixed_links"); }
inline void CableTray::import_affixed_links(Variant data) { this->voidcall("import_affixed_links", data); }
inline Variant CableTray::export_keystone_links() { return this->operator()("export_keystone_links"); }
inline void CableTray::import_keystone_links(Variant data) { this->voidcall("import_keystone_links", data); }
inline void CableTray::create_keystone_affix_link(Variant waypoints, Variant affix_start_world_pos, const KeystoneSocket& keystone_socket, const UnterminatedSpool& spool) { this->voidcall("create_keystone_affix_link", waypoints, affix_start_world_pos, Object(reinterpret_cast<const Object*>(&keystone_socket)->address()), Object(reinterpret_cast<const Object*>(&spool)->address())); }
inline void CableTray::create_keystone_to_keystone_link(Variant waypoints, const KeystoneSocket& start_ks, const KeystoneSocket& end_ks, const UnterminatedSpool& spool) { this->voidcall("create_keystone_to_keystone_link", waypoints, Object(reinterpret_cast<const Object*>(&start_ks)->address()), Object(reinterpret_cast<const Object*>(&end_ks)->address()), Object(reinterpret_cast<const Object*>(&spool)->address())); }
inline Variant CableTray::export_ks_to_ks_links() { return this->operator()("export_ks_to_ks_links"); }
inline void CableTray::import_ks_to_ks_links(Variant data) { this->voidcall("import_ks_to_ks_links", data); }

#endif

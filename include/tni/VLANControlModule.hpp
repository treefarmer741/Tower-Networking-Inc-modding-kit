#ifndef TNI_API_HEADER_VLANCONTROLMODULE
#define TNI_API_HEADER_VLANCONTROLMODULE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct VLANControlModule : public Node {
	using Node::Node;

	constexpr VLANControlModule(Node base) : Node{base} {}
	constexpr VLANControlModule(uint64_t addr) : Node{addr} {}
	constexpr VLANControlModule(Object obj) : VLANControlModule{obj.address()} {}
	VLANControlModule(Variant variant) : VLANControlModule{variant.as_object().address()} {}

	static constexpr int64_t MAX_VLANTAG_CHARS = 10;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(vlan_port_tags, Variant);
	PROPERTY(subif_cfg, Variant);
	PROPERTY(host_controller, LogicController);

	inline Variant is_valid_subif_id(String subif_id);
	inline Variant is_valid_vlan_tag(String vlan_cand);
	inline String get_configstr();
	inline void set_with_configstr(String cfgs);
	inline void add_port_tag(String portid, String tag);
	inline void remove_port_tag(String portid, String tag);
	inline void clear_all_tags();
	inline Variant get_save_var_list();
	inline void handle_save(Variant save_obj);
	inline void handle_load(Variant save_obj);
	inline Variant has_subint_id(String canonical_subif_id);
	inline String try_match_vlan_subifs(String physical_port, String vlan_tag);
	inline String try_match_port_and_tags(String physical_port, String subif_id);
	inline Variant parse_canonical_subifsyn(Variant canonical_subif);
	inline Variant get_canonical_subifsyn(String phy_port, String subif_id);
	inline void configure_subif(Variant physical_port, Variant subif_id, Variant vlan_tag);
};

#include "LogicController.hpp"

inline Variant VLANControlModule::is_valid_subif_id(String subif_id) { return operator()("is_valid_subif_id", subif_id); }
inline Variant VLANControlModule::is_valid_vlan_tag(String vlan_cand) { return operator()("is_valid_vlan_tag", vlan_cand); }
inline String VLANControlModule::get_configstr() { return operator()("get_configstr"); }
inline void VLANControlModule::set_with_configstr(String cfgs) { voidcall("set_with_configstr", cfgs); }
inline void VLANControlModule::add_port_tag(String portid, String tag) { voidcall("add_port_tag", portid, tag); }
inline void VLANControlModule::remove_port_tag(String portid, String tag) { voidcall("remove_port_tag", portid, tag); }
inline void VLANControlModule::clear_all_tags() { voidcall("clear_all_tags"); }
inline Variant VLANControlModule::get_save_var_list() { return operator()("get_save_var_list"); }
inline void VLANControlModule::handle_save(Variant save_obj) { voidcall("handle_save", save_obj); }
inline void VLANControlModule::handle_load(Variant save_obj) { voidcall("handle_load", save_obj); }
inline Variant VLANControlModule::has_subint_id(String canonical_subif_id) { return operator()("has_subint_id", canonical_subif_id); }
inline String VLANControlModule::try_match_vlan_subifs(String physical_port, String vlan_tag) { return operator()("try_match_vlan_subifs", physical_port, vlan_tag); }
inline String VLANControlModule::try_match_port_and_tags(String physical_port, String subif_id) { return operator()("try_match_port_and_tags", physical_port, subif_id); }
inline Variant VLANControlModule::parse_canonical_subifsyn(Variant canonical_subif) { return operator()("parse_canonical_subifsyn", canonical_subif); }
inline Variant VLANControlModule::get_canonical_subifsyn(String phy_port, String subif_id) { return operator()("get_canonical_subifsyn", phy_port, subif_id); }
inline void VLANControlModule::configure_subif(Variant physical_port, Variant subif_id, Variant vlan_tag) { voidcall("configure_subif", physical_port, subif_id, vlan_tag); }

#endif
